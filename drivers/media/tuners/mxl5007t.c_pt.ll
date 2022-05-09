; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mxl5007t.c_pt.bc'
source_filename = "../drivers/media/tuners/mxl5007t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxl5007t_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mxl5007t_attach\09\09\09\09"
module asm "\09.long\09__crc_mxl5007t_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl5007t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl5007t_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl5007t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reg_pair_t = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mxl5007t_state = type { %struct.list_head, %struct.tuner_i2c_props, %struct.mutex, ptr, i32, [17 x %struct.reg_pair_t], [20 x %struct.reg_pair_t], [11 x %struct.reg_pair_t], i32, i32, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }

@__param_str_debug = internal constant [15 x i8] c"mxl5007t.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mxl5007t_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mxl5007t_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"mxl5007t.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [36 x i8] c"mxl5007t.parm=debug:set debug level\00", section ".modinfo", align 1
@mxl5007t_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mxl5007t_list_mutex, i64 52), ptr getelementptr (i8, ptr @mxl5007t_list_mutex, i64 52) }, ptr @mxl5007t_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5007t_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/mxl5007t.c\00", [32 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry_ptr = internal global ptr @mxl5007t_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxl5007t\00", [23 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry_ptr.6 = internal global ptr @mxl5007t_attach._entry.4, section ".printk_index", align 4
@mxl5007t_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry_ptr.10 = internal global ptr @mxl5007t_attach._entry.8, section ".printk_index", align 4
@mxl5007t_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry_ptr.12 = internal global ptr @mxl5007t_attach._entry.11, section ".printk_index", align 4
@mxl5007t_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl5007t_attach._entry_ptr.14 = internal global ptr @mxl5007t_attach._entry.13, section ".printk_index", align 4
@mxl5007t_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MaxLinear MxL5007T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @mxl5007t_release, ptr @mxl5007t_init, ptr @mxl5007t_sleep, ptr null, ptr null, ptr @mxl5007t_set_params, ptr null, ptr null, ptr @mxl5007t_get_frequency, ptr @mxl5007t_get_bandwidth, ptr @mxl5007t_get_if_frequency, ptr @mxl5007t_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mxl5007t_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl5007t_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl5007t_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl5007t_attach to i32), ptr @__kstrtab_mxl5007t_attach, ptr @__kstrtabns_mxl5007t_attach }, section "___ksymtab_gpl+mxl5007t_attach", align 4
@__UNIQUE_ID_description292 = internal constant [64 x i8] c"mxl5007t.description=MaxLinear MxL5007T Silicon IC tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [53 x i8] c"mxl5007t.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [44 x i8] c"mxl5007t.file=drivers/media/tuners/mxl5007t\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"mxl5007t.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [21 x i8] c"mxl5007t.version=0.2\00", section ".modinfo", align 1
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.3, ptr @.str.16 }, section "__modver", align 4
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxl5007t_list_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl5007t_list_mutex\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxl5007t_get_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.19, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxl5007t_get_chip_id\00", [43 x i8] zeroinitializer }, align 32
@mxl5007t_get_chip_id._entry_ptr = internal global ptr @mxl5007t_get_chip_id._entry, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MxL5007.v1.f1\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MxL5007.v1.f2\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MxL5007.v2.100.f1\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MxL5007.v2.100.f2\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MxL5007.v2.200.f1\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MxL5007.v2.200.f2\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MxL5007T.v4\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MxL5007T\00", [23 x i8] zeroinitializer }, align 32
@mxl5007t_get_chip_id._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: unknown rev (%02x)\0A\00", [38 x i8] zeroinitializer }, align 32
@mxl5007t_get_chip_id._entry_ptr.30 = internal global ptr @mxl5007t_get_chip_id._entry.28, section ".printk_index", align 4
@mxl5007t_get_chip_id._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.19, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: %s detected @ %d-%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@mxl5007t_get_chip_id._entry_ptr.33 = internal global ptr @mxl5007t_get_chip_id._entry.31, section ".printk_index", align 4
@mxl5007t_get_chip_id._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.19, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: unable to identify device @ %d-%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@mxl5007t_get_chip_id._entry_ptr.36 = internal global ptr @mxl5007t_get_chip_id._entry.34, section ".printk_index", align 4
@mxl5007t_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: %d: failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl5007t_read_reg\00", [46 x i8] zeroinitializer }, align 32
@mxl5007t_read_reg._entry_ptr = internal global ptr @mxl5007t_read_reg._entry, section ".printk_index", align 4
@mxl5007t_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl5007t_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@mxl5007t_soft_reset._entry_ptr = internal global ptr @mxl5007t_soft_reset._entry, section ".printk_index", align 4
@mxl5007t_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.40, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxl5007t_write_reg\00", [45 x i8] zeroinitializer }, align 32
@mxl5007t_write_reg._entry_ptr = internal global ptr @mxl5007t_write_reg._entry, section ".printk_index", align 4
@mxl5007t_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.41, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxl5007t_init\00", [18 x i8] zeroinitializer }, align 32
@mxl5007t_init._entry_ptr = internal global ptr @mxl5007t_init._entry, section ".printk_index", align 4
@mxl5007t_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.42, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl5007t_sleep\00", [17 x i8] zeroinitializer }, align 32
@mxl5007t_sleep._entry_ptr = internal global ptr @mxl5007t_sleep._entry, section ".printk_index", align 4
@mxl5007t_sleep._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.42, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl5007t_sleep._entry_ptr.44 = internal global ptr @mxl5007t_sleep._entry.43, section ".printk_index", align 4
@mxl5007t_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %d: modulation type not supported!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl5007t_set_params\00", [44 x i8] zeroinitializer }, align 32
@mxl5007t_set_params._entry_ptr = internal global ptr @mxl5007t_set_params._entry, section ".printk_index", align 4
@mxl5007t_set_params._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.46, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl5007t_set_params._entry_ptr.48 = internal global ptr @mxl5007t_set_params._entry.47, section ".printk_index", align 4
@mxl5007t_set_params._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.46, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl5007t_set_params._entry_ptr.50 = internal global ptr @mxl5007t_set_params._entry.49, section ".printk_index", align 4
@mxl5007t_tuner_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.51, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl5007t_tuner_init\00", [44 x i8] zeroinitializer }, align 32
@mxl5007t_tuner_init._entry_ptr = internal global ptr @mxl5007t_tuner_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_tab = internal constant { [17 x %struct.reg_pair_t], [62 x i8] } { [17 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 2, i8 6 }, %struct.reg_pair_t { i8 3, i8 72 }, %struct.reg_pair_t { i8 5, i8 4 }, %struct.reg_pair_t { i8 6, i8 16 }, %struct.reg_pair_t { i8 46, i8 21 }, %struct.reg_pair_t { i8 48, i8 16 }, %struct.reg_pair_t { i8 69, i8 88 }, %struct.reg_pair_t { i8 72, i8 25 }, %struct.reg_pair_t { i8 82, i8 3 }, %struct.reg_pair_t { i8 83, i8 68 }, %struct.reg_pair_t { i8 106, i8 75 }, %struct.reg_pair_t { i8 118, i8 0 }, %struct.reg_pair_t { i8 120, i8 24 }, %struct.reg_pair_t { i8 122, i8 23 }, %struct.reg_pair_t { i8 -123, i8 6 }, %struct.reg_pair_t { i8 1, i8 1 }, %struct.reg_pair_t zeroinitializer], [62 x i8] zeroinitializer }, align 32
@init_tab_cable = internal constant { [20 x %struct.reg_pair_t], [56 x i8] } { [20 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 2, i8 6 }, %struct.reg_pair_t { i8 3, i8 72 }, %struct.reg_pair_t { i8 5, i8 4 }, %struct.reg_pair_t { i8 6, i8 16 }, %struct.reg_pair_t { i8 9, i8 63 }, %struct.reg_pair_t { i8 10, i8 63 }, %struct.reg_pair_t { i8 11, i8 63 }, %struct.reg_pair_t { i8 46, i8 21 }, %struct.reg_pair_t { i8 48, i8 16 }, %struct.reg_pair_t { i8 69, i8 88 }, %struct.reg_pair_t { i8 72, i8 25 }, %struct.reg_pair_t { i8 82, i8 3 }, %struct.reg_pair_t { i8 83, i8 68 }, %struct.reg_pair_t { i8 106, i8 75 }, %struct.reg_pair_t { i8 118, i8 0 }, %struct.reg_pair_t { i8 120, i8 24 }, %struct.reg_pair_t { i8 122, i8 23 }, %struct.reg_pair_t { i8 -123, i8 6 }, %struct.reg_pair_t { i8 1, i8 1 }, %struct.reg_pair_t zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mxl5007t_set_mode_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.52, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl5007t_set_mode_bits\00", [41 x i8] zeroinitializer }, align 32
@mxl5007t_set_mode_bits._entry_ptr = internal global ptr @mxl5007t_set_mode_bits._entry, section ".printk_index", align 4
@mxl5007t_set_if_freq_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.53, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl5007t_set_if_freq_bits\00", [38 x i8] zeroinitializer }, align 32
@mxl5007t_set_if_freq_bits._entry_ptr = internal global ptr @mxl5007t_set_if_freq_bits._entry, section ".printk_index", align 4
@mxl5007t_set_xtal_freq_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.54, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mxl5007t_set_xtal_freq_bits\00", [36 x i8] zeroinitializer }, align 32
@mxl5007t_set_xtal_freq_bits._entry_ptr = internal global ptr @mxl5007t_set_xtal_freq_bits._entry, section ".printk_index", align 4
@mxl5007t_tuner_rf_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.55, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl5007t_tuner_rf_tune\00", [41 x i8] zeroinitializer }, align 32
@mxl5007t_tuner_rf_tune._entry_ptr = internal global ptr @mxl5007t_tuner_rf_tune._entry, section ".printk_index", align 4
@reg_pair_rftune = internal constant { [11 x %struct.reg_pair_t], [42 x i8] } { [11 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 15, i8 0 }, %struct.reg_pair_t { i8 12, i8 21 }, %struct.reg_pair_t { i8 13, i8 64 }, %struct.reg_pair_t { i8 14, i8 14 }, %struct.reg_pair_t { i8 31, i8 -121 }, %struct.reg_pair_t { i8 32, i8 31 }, %struct.reg_pair_t { i8 33, i8 -121 }, %struct.reg_pair_t { i8 34, i8 31 }, %struct.reg_pair_t { i8 -128, i8 1 }, %struct.reg_pair_t { i8 15, i8 1 }, %struct.reg_pair_t zeroinitializer], [42 x i8] zeroinitializer }, align 32
@mxl5007t_set_bw_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.56, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxl5007t_set_bw_bits\00", [43 x i8] zeroinitializer }, align 32
@mxl5007t_set_bw_bits._entry_ptr = internal global ptr @mxl5007t_set_bw_bits._entry, section ".printk_index", align 4
@mxl5007t_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.57, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl5007t_get_status\00", [44 x i8] zeroinitializer }, align 32
@mxl5007t_get_status._entry_ptr = internal global ptr @mxl5007t_get_status._entry, section ".printk_index", align 4
@mxl5007t_get_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@mxl5007t_get_status._entry_ptr.60 = internal global ptr @mxl5007t_get_status._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf locked \00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ref locked\00", [21 x i8] zeroinitializer }, align 32
@mxl5007t_synth_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.64, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxl5007t_synth_lock_status\00", [37 x i8] zeroinitializer }, align 32
@mxl5007t_synth_lock_status._entry_ptr = internal global ptr @mxl5007t_synth_lock_status._entry, section ".printk_index", align 4
@mxl5007t_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxl5007t_release\00", [47 x i8] zeroinitializer }, align 32
@mxl5007t_release._entry_ptr = internal global ptr @mxl5007t_release._entry, section ".printk_index", align 4
@switch.table.mxl5007t_set_params = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\02\03\04\05\06\07\08\09\0A\0B", [21 x i8] zeroinitializer }, align 32
@switch.table.mxl5007t_get_if_frequency = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 4000000, i32 4500000, i32 4570000, i32 5000000, i32 5380000, i32 6000000, i32 6280000, i32 9191500, i32 35250000, i32 36150000, i32 44000000], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [9 x i64] [i64 7, i64 8, i64 17, i64 18, i64 20, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 16]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 11]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 14]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"mxl5007t_debug\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 17, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"mxl5007t_list_mutex\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 15, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 844, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 854, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 865, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 881, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 893, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"mxl5007t_tuner_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 771, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 914, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 14, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 792, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 797, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 800, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 803, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 806, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 809, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 812, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 815, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 818, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 819, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 823, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 828, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 481, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 497, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 448, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 667, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 685, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 687, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 627, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 637, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 641, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 513, i32 6 }
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 78, i32 26 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"init_tab_cable\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 98, i32 26 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 220, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 265, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 338, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 530, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"reg_pair_rftune\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 123, i32 26 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 390, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 574, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 576, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 549, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [35 x i8] c"../drivers/media/tuners/mxl5007t.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 762, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [33 x i8] c"switch.table.mxl5007t_set_params\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [39 x i8] c"switch.table.mxl5007t_get_if_frequency\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__ksymtab_mxl5007t_attach, ptr @__modver_attr, ptr @__param_debug, ptr @mxl5007t_attach._entry, ptr @mxl5007t_attach._entry.11, ptr @mxl5007t_attach._entry.13, ptr @mxl5007t_attach._entry.4, ptr @mxl5007t_attach._entry.8, ptr @mxl5007t_attach._entry_ptr, ptr @mxl5007t_attach._entry_ptr.10, ptr @mxl5007t_attach._entry_ptr.12, ptr @mxl5007t_attach._entry_ptr.14, ptr @mxl5007t_attach._entry_ptr.6, ptr @mxl5007t_get_chip_id._entry, ptr @mxl5007t_get_chip_id._entry.28, ptr @mxl5007t_get_chip_id._entry.31, ptr @mxl5007t_get_chip_id._entry.34, ptr @mxl5007t_get_chip_id._entry_ptr, ptr @mxl5007t_get_chip_id._entry_ptr.30, ptr @mxl5007t_get_chip_id._entry_ptr.33, ptr @mxl5007t_get_chip_id._entry_ptr.36, ptr @mxl5007t_get_status._entry, ptr @mxl5007t_get_status._entry.58, ptr @mxl5007t_get_status._entry_ptr, ptr @mxl5007t_get_status._entry_ptr.60, ptr @mxl5007t_init._entry, ptr @mxl5007t_init._entry_ptr, ptr @mxl5007t_read_reg._entry, ptr @mxl5007t_read_reg._entry_ptr, ptr @mxl5007t_release._entry, ptr @mxl5007t_release._entry_ptr, ptr @mxl5007t_set_bw_bits._entry, ptr @mxl5007t_set_bw_bits._entry_ptr, ptr @mxl5007t_set_if_freq_bits._entry, ptr @mxl5007t_set_if_freq_bits._entry_ptr, ptr @mxl5007t_set_mode_bits._entry, ptr @mxl5007t_set_mode_bits._entry_ptr, ptr @mxl5007t_set_params._entry, ptr @mxl5007t_set_params._entry.47, ptr @mxl5007t_set_params._entry.49, ptr @mxl5007t_set_params._entry_ptr, ptr @mxl5007t_set_params._entry_ptr.48, ptr @mxl5007t_set_params._entry_ptr.50, ptr @mxl5007t_set_xtal_freq_bits._entry, ptr @mxl5007t_set_xtal_freq_bits._entry_ptr, ptr @mxl5007t_sleep._entry, ptr @mxl5007t_sleep._entry.43, ptr @mxl5007t_sleep._entry_ptr, ptr @mxl5007t_sleep._entry_ptr.44, ptr @mxl5007t_soft_reset._entry, ptr @mxl5007t_soft_reset._entry_ptr, ptr @mxl5007t_synth_lock_status._entry, ptr @mxl5007t_synth_lock_status._entry_ptr, ptr @mxl5007t_tuner_init._entry, ptr @mxl5007t_tuner_init._entry_ptr, ptr @mxl5007t_tuner_rf_tune._entry, ptr @mxl5007t_tuner_rf_tune._entry_ptr, ptr @mxl5007t_write_reg._entry, ptr @mxl5007t_write_reg._entry_ptr, ptr @mxl5007t_debug, ptr @mxl5007t_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @mxl5007t_attach.__key, ptr @.str.7, ptr @.str.9, ptr @mxl5007t_tuner_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.51, ptr @init_tab, ptr @init_tab_cable, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @reg_pair_rftune, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.mxl5007t_set_params, ptr @switch.table.mxl5007t_get_if_frequency], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_chip_id._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_chip_id._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_chip_id._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_sleep._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_params._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_params._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_tuner_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab_cable to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_mode_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_if_freq_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_xtal_freq_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_tuner_rf_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_pair_rftune to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_set_bw_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_get_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_synth_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5007t_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mxl5007t_set_params to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mxl5007t_get_if_frequency to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mxl5007t_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %addr, ptr noundef %cfg) #0 align 64 {
entry:
  %buf.i265 = alloca [2 x i8], align 1
  %msg.i266 = alloca %struct.i2c_msg, align 4
  %d.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mxl5007t_list_mutex, i32 noundef 0) #6
  %state.0283 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp.not284 = icmp eq ptr %state.0283, @hybrid_tuner_instance_list
  br i1 %cmp.not284, label %entry.if.then40_crit_edge, label %for.body.lr.ph

entry.if.then40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %i2c, null
  %nr.i259 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %state.0285 = phi ptr [ %state.0283, %for.body.lr.ph ], [ %state.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i2c_props = getelementptr inbounds %struct.mxl5007t_state, ptr %state.0285, i32 0, i32 1
  %adap = getelementptr inbounds %struct.mxl5007t_state, ptr %state.0285, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true2:                                   ; preds = %land.lhs.true
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  %4 = ptrtoint ptr %nr.i259 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i259, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6 = icmp eq i32 %3, %5
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true2.for.inc_crit_edge

land.lhs.true2.for.inc_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %6 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_props, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %addr)
  %cmp11 = icmp eq i8 %7, %addr
  br i1 %cmp11, label %for.end, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true2.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %state.0285 to i32
  call void @__asan_load4_noabort(i32 %8)
  %state.0 = load ptr, ptr %state.0285, align 4
  %cmp.not = icmp eq ptr %state.0, @hybrid_tuner_instance_list
  br i1 %cmp.not, label %for.inc.if.then40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

for.end:                                          ; preds = %land.lhs.true7
  %name = getelementptr inbounds %struct.mxl5007t_state, ptr %state.0285, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %conv25 = zext i8 %addr to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef %3, i32 noundef %conv25) #9
  %count = getelementptr inbounds %struct.mxl5007t_state, ptr %state.0285, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp38 = icmp eq i32 %inc, 0
  br i1 %cmp38, label %for.end.if.then40_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__fail

for.end.if.then40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then40:                                        ; preds = %for.end.if.then40_crit_edge, %for.inc.if.then40_crit_edge, %entry.if.then40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 232) #10
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.then40.sw.epilog_crit_edge, label %if.end44

if.then40.sw.epilog_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end44:                                         ; preds = %if.then40
  %i2c_props45 = getelementptr inbounds %struct.mxl5007t_state, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %i2c_props45 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %addr, ptr %i2c_props45, align 8
  %adap48 = getelementptr inbounds %struct.mxl5007t_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %adap48 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i2c, ptr %adap48, align 4
  %name50 = getelementptr inbounds %struct.mxl5007t_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %name50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.3, ptr %name50, align 4
  %tobool61.not = icmp eq ptr %i2c, null
  br i1 %tobool61.not, label %if.end44.cond.end67_crit_edge, label %cond.true62

if.end44.cond.end67_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end67

cond.true62:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i261 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i261 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i261, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.true62, %if.end44.cond.end67_crit_edge
  %cond68 = phi i32 [ %18, %cond.true62 ], [ -1, %if.end44.cond.end67_crit_edge ]
  %conv71 = zext i8 %addr to i32
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %cond68, i32 noundef %conv71) #9
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef nonnull @hybrid_tuner_instance_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end67.list_add_tail.exit_crit_edge

cond.end67.list_add_tail.exit_crit_edge:          ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hybrid_tuner_instance_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end67.list_add_tail.exit_crit_edge
  %count79 = getelementptr inbounds %struct.mxl5007t_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %count79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count79, align 8
  %inc80 = add i32 %24, 1
  store i32 %inc80, ptr %count79, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc80, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %state.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %state.0285, %for.end.__fail_crit_edge ]
  %25 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.epilog_crit_edge [
    i32 0, label %__fail.fail_crit_edge
    i32 1, label %sw.bb85
  ]

__fail.fail_crit_edge:                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

__fail.sw.epilog_crit_edge:                       ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb85:                                          ; preds = %__fail
  %config = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 3
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cfg, ptr %config, align 4
  %lock = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mxl5007t_attach.__key) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %27 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool89.not = icmp eq ptr %28, null
  br i1 %tobool89.not, label %sw.bb85.if.end94_crit_edge, label %if.then90

sw.bb85.if.end94_crit_edge:                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then90:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = tail call i32 %28(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %sw.bb85.if.end94_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id.i) #6
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %id.i, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -5, ptr %buf.i.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -39, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %33 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %34 = call ptr @memset(ptr %33, i32 255, i32 16)
  %i2c_props.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 1
  %35 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_props.i.i, align 4
  %conv.i.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i, align 2
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %33, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %arrayinit.element4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %41 = ptrtoint ptr %arrayinit.element4.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %arrayinit.element4.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %42 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %43 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len10.i.i, align 4
  %buf11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %44 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %id.i, ptr %buf11.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap.i.i, align 4
  %call.i.i262 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i262)
  %cmp.not.i.i = icmp eq i32 %call.i.i262, 2
  br i1 %cmp.not.i.i, label %if.end5.critedge.i, label %do.end.i

do.end.i:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 481) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, i32 noundef -121, i32 noundef 792) #9
  %47 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adap.i.i, align 4
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr.i.i, align 4
  %51 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_props.i.i, align 4
  %conv37.i = zext i8 %52 to i32
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.19, i32 noundef %50, i32 noundef %conv37.i) #9
  %chip_id39.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 4
  %53 = ptrtoint ptr %chip_id39.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %chip_id39.i, align 4
  br label %mxl5007t_get_chip_id.exit

if.end5.critedge.i:                               ; preds = %if.end94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %54 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %55, label %sw.default.i [
    i8 17, label %if.end5.critedge.i.sw.epilog.i_crit_edge
    i8 18, label %sw.bb7.i
    i8 33, label %sw.bb8.i
    i8 34, label %sw.bb9.i
    i8 35, label %sw.bb10.i
    i8 36, label %sw.bb11.i
    i8 20, label %sw.bb12.i
  ]

if.end5.critedge.i.sw.epilog.i_crit_edge:         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %55 to i32
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, i32 noundef %conv6.i) #9
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %id.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %if.end5.critedge.i.sw.epilog.i_crit_edge
  %name.0.i = phi ptr [ @.str.27, %sw.default.i ], [ @.str.26, %sw.bb12.i ], [ @.str.25, %sw.bb11.i ], [ @.str.24, %sw.bb10.i ], [ @.str.23, %sw.bb9.i ], [ @.str.22, %sw.bb8.i ], [ @.str.21, %sw.bb7.i ], [ @.str.20, %if.end5.critedge.i.sw.epilog.i_crit_edge ]
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id.i, align 1
  %conv19.i = zext i8 %59 to i32
  %chip_id.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1, i32 0, i32 4
  %60 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv19.i, ptr %chip_id.i, align 4
  %61 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adap.i.i, align 4
  %nr.i51.i = getelementptr inbounds %struct.i2c_adapter, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %nr.i51.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i51.i, align 4
  %65 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %i2c_props.i.i, align 4
  %conv26.i = zext i8 %66 to i32
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.0.i, i32 noundef %64, i32 noundef %conv26.i) #9
  br label %mxl5007t_get_chip_id.exit

mxl5007t_get_chip_id.exit:                        ; preds = %sw.epilog.i, %do.end.i
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ 0, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #6
  %67 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool98.not = icmp eq ptr %68, null
  br i1 %tobool98.not, label %mxl5007t_get_chip_id.exit.if.end103_crit_edge, label %if.then99

mxl5007t_get_chip_id.exit.if.end103_crit_edge:    ; preds = %mxl5007t_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then99:                                        ; preds = %mxl5007t_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = call i32 %68(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %mxl5007t_get_chip_id.exit.if.end103_crit_edge
  br i1 %cmp.not.i.i, label %if.end103.sw.epilog_crit_edge, label %do.end111

if.end103.sw.epilog_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i, i32 noundef 865) #9
  br label %fail

sw.epilog:                                        ; preds = %if.end103.sw.epilog_crit_edge, %__fail.sw.epilog_crit_edge, %if.then40.sw.epilog_crit_edge
  %state.1280 = phi ptr [ %state.1, %if.end103.sw.epilog_crit_edge ], [ %state.1, %__fail.sw.epilog_crit_edge ], [ null, %if.then40.sw.epilog_crit_edge ]
  %i2c_gate_ctrl120 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %69 = ptrtoint ptr %i2c_gate_ctrl120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_gate_ctrl120, align 4
  %tobool121.not = icmp eq ptr %70, null
  br i1 %tobool121.not, label %sw.epilog.if.end126_crit_edge, label %if.then122

sw.epilog.if.end126_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then122:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call i32 %70(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %sw.epilog.if.end126_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #6
  %71 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %d.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %72 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 131071, ptr %72, align 4
  %i2c_props.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1280, i32 0, i32 1
  %74 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_props.i, align 4
  %conv.i = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %d.i, ptr %buf.i, align 4
  %adap.i = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1280, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end126.mxl5007t_soft_reset.exit_crit_edge, label %do.end.i263

if.end126.mxl5007t_soft_reset.exit_crit_edge:     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_soft_reset.exit

do.end.i263:                                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, i32 noundef 497) #9
  br label %mxl5007t_soft_reset.exit

mxl5007t_soft_reset.exit:                         ; preds = %do.end.i263, %if.end126.mxl5007t_soft_reset.exit_crit_edge
  %retval.0.i264 = phi i32 [ -121, %do.end.i263 ], [ 0, %if.end126.mxl5007t_soft_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #6
  %81 = ptrtoint ptr %i2c_gate_ctrl120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_gate_ctrl120, align 4
  %tobool130.not = icmp eq ptr %82, null
  br i1 %tobool130.not, label %mxl5007t_soft_reset.exit.if.end135_crit_edge, label %if.then131

mxl5007t_soft_reset.exit.if.end135_crit_edge:     ; preds = %mxl5007t_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then131:                                       ; preds = %mxl5007t_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call134 = call i32 %82(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %mxl5007t_soft_reset.exit.if.end135_crit_edge
  br i1 %cmp.not.i, label %if.end150.critedge, label %do.end143

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i264, i32 noundef 881) #9
  br label %fail

if.end150.critedge:                               ; preds = %if.end135
  %83 = ptrtoint ptr %i2c_gate_ctrl120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_gate_ctrl120, align 4
  %tobool153.not = icmp eq ptr %84, null
  br i1 %tobool153.not, label %if.end150.critedge.if.end158_crit_edge, label %if.then154

if.end150.critedge.if.end158_crit_edge:           ; preds = %if.end150.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

if.then154:                                       ; preds = %if.end150.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call157 = call i32 %84(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end150.critedge.if.end158_crit_edge
  %config159 = getelementptr inbounds %struct.mxl5007t_state, ptr %state.1280, i32 0, i32 3
  %85 = ptrtoint ptr %config159 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config159, align 4
  %loop_thru_enable = getelementptr inbounds %struct.mxl5007t_config, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %loop_thru_enable to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load = load i8, ptr %loop_thru_enable, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i265) #6
  %88 = getelementptr inbounds [2 x i8], ptr %buf.i265, i32 0, i32 1
  %89 = ptrtoint ptr %buf.i265 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %buf.i265, align 1
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %bf.clear, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i266) #6
  %91 = getelementptr inbounds i8, ptr %msg.i266, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 196607, ptr %91, align 4
  %93 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %i2c_props.i, align 4
  %conv.i268 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i266 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i268, ptr %msg.i266, align 4
  %flags.i269 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i266, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i269 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i269, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i266, i32 0, i32 3
  %97 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i265, ptr %buf2.i, align 4
  %98 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adap.i, align 4
  %call.i272 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i266, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i272)
  %cmp.not.i273 = icmp eq i32 %call.i272, 1
  br i1 %cmp.not.i273, label %if.end158.mxl5007t_write_reg.exit_crit_edge, label %do.end.i274

if.end158.mxl5007t_write_reg.exit_crit_edge:      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_write_reg.exit

do.end.i274:                                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  br label %mxl5007t_write_reg.exit

mxl5007t_write_reg.exit:                          ; preds = %do.end.i274, %if.end158.mxl5007t_write_reg.exit_crit_edge
  %retval.0.i275 = phi i32 [ -121, %do.end.i274 ], [ 0, %if.end158.mxl5007t_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i266) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i265) #6
  %100 = ptrtoint ptr %i2c_gate_ctrl120 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_gate_ctrl120, align 4
  %tobool164.not = icmp eq ptr %101, null
  br i1 %tobool164.not, label %mxl5007t_write_reg.exit.if.end169_crit_edge, label %if.then165

mxl5007t_write_reg.exit.if.end169_crit_edge:      ; preds = %mxl5007t_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then165:                                       ; preds = %mxl5007t_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call168 = call i32 %101(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %mxl5007t_write_reg.exit.if.end169_crit_edge
  br i1 %cmp.not.i273, label %if.end184.critedge, label %do.end177

do.end177:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i275, i32 noundef 893) #9
  br label %fail

if.end184.critedge:                               ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %102 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %state.1280, ptr %tuner_priv, align 4
  call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #6
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %103 = call ptr @memcpy(ptr %tuner_ops, ptr @mxl5007t_tuner_ops, i32 220)
  br label %cleanup

fail:                                             ; preds = %do.end177, %do.end143, %do.end111, %__fail.fail_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #6
  call void @mxl5007t_release(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end184.critedge
  %retval.0 = phi ptr [ null, %fail ], [ %fe, %if.end184.critedge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxl5007t_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mxl5007t_list_mutex, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1
  %count = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %5, i32 noundef %cond, i32 noundef %conv) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end21

if.end21:                                         ; preds = %list_del.exit, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #6
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl5007t_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %i2c_props.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props.i, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %adap.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl5007t_write_reg.exit, label %do.end

mxl5007t_write_reg.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.41, i32 noundef -121, i32 noundef 667) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %mxl5007t_write_reg.exit
  %retval.0.i30 = phi i32 [ -121, %do.end ], [ 0, %mxl5007t_write_reg.exit ]
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end7.if.end16_crit_edge, label %if.then12

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 %17(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end7.if.end16_crit_edge
  ret i32 %retval.0.i30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl5007t_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i44 = alloca [2 x i8], align 1
  %msg.i45 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %i2c_props.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props.i, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %adap.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl5007t_write_reg.exit, label %do.end

mxl5007t_write_reg.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.42, i32 noundef -121, i32 noundef 685) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %mxl5007t_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i44) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i44, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %buf.i44, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45) #6
  %19 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props.i, align 4
  %conv.i47 = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i48, align 2
  %buf2.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %25 = ptrtoint ptr %buf2.i50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i44, ptr %buf2.i50, align 4
  %26 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap.i, align 4
  %call.i52 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i45, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.not.i53 = icmp eq i32 %call.i52, 1
  br i1 %cmp.not.i53, label %mxl5007t_write_reg.exit57, label %do.end17

mxl5007t_write_reg.exit57:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44) #6
  br label %if.end20

do.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i44) #6
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.42, i32 noundef -121, i32 noundef 687) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %mxl5007t_write_reg.exit57
  %retval.0.i5664 = phi i32 [ -121, %do.end17 ], [ 0, %mxl5007t_write_reg.exit57 ]
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.end20.if.end29_crit_edge, label %if.then25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 %29(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end20.if.end29_crit_edge
  ret i32 %retval.0.i5664
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl5007t_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i.i81 = alloca [2 x i8], align 1
  %msg.i.i.i82 = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %do.end [
    i32 11, label %entry.sw.epilog7_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %entry.sw.bb2_crit_edge
    i32 16, label %entry.sw.bb2_crit_edge227
  ]

entry.sw.bb2_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog7

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog7

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge227
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth_hz, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %8, label %sw.bb2.cleanup_crit_edge [
    i32 6000000, label %sw.bb2.sw.epilog7_crit_edge
    i32 7000000, label %sw.bb4
    i32 8000000, label %sw.bb5
  ]

sw.bb2.sw.epilog7_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 627) #9
  br label %cleanup

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb4, %sw.bb2.sw.epilog7_crit_edge, %sw.bb1, %entry.sw.epilog7_crit_edge
  %cmp.i.i = phi i1 [ false, %sw.bb2.sw.epilog7_crit_edge ], [ false, %entry.sw.epilog7_crit_edge ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ true, %sw.bb1 ]
  %mode.0 = phi i32 [ 1, %sw.bb2.sw.epilog7_crit_edge ], [ 2, %entry.sw.epilog7_crit_edge ], [ 1, %sw.bb4 ], [ 1, %sw.bb5 ], [ 16, %sw.bb1 ]
  %bw.0 = phi i8 [ 21, %sw.bb2.sw.epilog7_crit_edge ], [ 21, %entry.sw.epilog7_crit_edge ], [ 42, %sw.bb4 ], [ 63, %sw.bb5 ], [ 21, %sw.bb1 ]
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %sw.epilog7.if.end_crit_edge, label %if.then

sw.epilog7.if.end_crit_edge:                      ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog7.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %config.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 4
  %tab_init.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 5
  %14 = call ptr @memcpy(ptr %tab_init.i.i, ptr @init_tab, i32 34)
  %tab_init_cable.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %tab_init_cable.i.i, ptr @init_tab_cable, i32 40)
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %18 = zext i32 %mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %mode.0, label %do.end.i.i.i [
    i32 2, label %if.end.while.cond.i.i.i.i_crit_edge
    i32 1, label %if.end.while.cond.i23.i.i.i_crit_edge
    i32 16, label %if.end.while.cond.i39.i.i.i_crit_edge
  ]

if.end.while.cond.i39.i.i.i_crit_edge:            ; preds = %if.end
  br label %while.cond.i39.i.i.i

if.end.while.cond.i23.i.i.i_crit_edge:            ; preds = %if.end
  br label %while.cond.i23.i.i.i

if.end.while.cond.i.i.i.i_crit_edge:              ; preds = %if.end
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %if.end.i.i.i.i, %if.end.while.cond.i.i.i.i_crit_edge
  %i.0.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.end.i.i.i.i ], [ 0, %if.end.while.cond.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %20, label %while.cond.i.i.i.i.if.end.i.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i.i.i.i
    i8 6, label %if.then.i.i.i.i
  ]

while.cond.i.i.i.i.if.end.i.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %while.cond.i.i.i.i
  %val3.i.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i.i, i32 1
  %22 = ptrtoint ptr %val3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.i.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool5.not.i.i.i.i, label %lor.rhs.i.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge, label %lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge

lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i

lor.rhs.i.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_mode_bits.exit.i.i

if.then.i.i.i.i:                                  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i.i, i32 1
  %24 = ptrtoint ptr %val13.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val13.i.i.i.i, align 1
  %and.i.i.i.i = and i8 %25, -32
  %or30.i.i.i.i = or i8 %and.i.i.i.i, 18
  store i8 %or30.i.i.i.i, ptr %val13.i.i.i.i, align 1
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %lor.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, %while.cond.i.i.i.i.if.end.i.i.i.i_crit_edge
  %inc.i.i.i.i = add i32 %i.0.i.i.i.i, 1
  br label %while.cond.i.i.i.i

while.cond.i23.i.i.i:                             ; preds = %if.end.i34.i.i.i, %if.end.while.cond.i23.i.i.i_crit_edge
  %i.0.i20.i.i.i = phi i32 [ %inc.i33.i.i.i, %if.end.i34.i.i.i ], [ 0, %if.end.while.cond.i23.i.i.i_crit_edge ]
  %arrayidx.i21.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i.i.i
  %26 = ptrtoint ptr %arrayidx.i21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i21.i.i.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %27, label %while.cond.i23.i.i.i.if.end.i34.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i26.i.i.i
    i8 6, label %if.then.i32.i.i.i
  ]

while.cond.i23.i.i.i.if.end.i34.i.i.i_crit_edge:  ; preds = %while.cond.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34.i.i.i

lor.rhs.i26.i.i.i:                                ; preds = %while.cond.i23.i.i.i
  %val3.i24.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i.i.i, i32 1
  %29 = ptrtoint ptr %val3.i24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val3.i24.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.i25.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool5.not.i25.i.i.i, label %lor.rhs.i26.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge, label %lor.rhs.i26.i.i.i.if.end.i34.i.i.i_crit_edge

lor.rhs.i26.i.i.i.if.end.i34.i.i.i_crit_edge:     ; preds = %lor.rhs.i26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34.i.i.i

lor.rhs.i26.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_mode_bits.exit.i.i

if.then.i32.i.i.i:                                ; preds = %while.cond.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i29.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i.i.i, i32 1
  %31 = ptrtoint ptr %val13.i29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val13.i29.i.i.i, align 1
  %and.i30.i.i.i = and i8 %32, -32
  %or30.i31.i.i.i = or i8 %and.i30.i.i.i, 17
  store i8 %or30.i31.i.i.i, ptr %val13.i29.i.i.i, align 1
  br label %if.end.i34.i.i.i

if.end.i34.i.i.i:                                 ; preds = %if.then.i32.i.i.i, %lor.rhs.i26.i.i.i.if.end.i34.i.i.i_crit_edge, %while.cond.i23.i.i.i.if.end.i34.i.i.i_crit_edge
  %inc.i33.i.i.i = add i32 %i.0.i20.i.i.i, 1
  br label %while.cond.i23.i.i.i

while.cond.i39.i.i.i:                             ; preds = %if.end.i48.i.i.i, %if.end.while.cond.i39.i.i.i_crit_edge
  %i.0.i36.i.i.i = phi i32 [ %inc.i47.i.i.i, %if.end.i48.i.i.i ], [ 0, %if.end.while.cond.i39.i.i.i_crit_edge ]
  %arrayidx.i37.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i36.i.i.i
  %33 = ptrtoint ptr %arrayidx.i37.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i37.i.i.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %34, label %while.cond.i39.i.i.i.if.end.i48.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i42.i.i.i
    i8 9, label %if.then.i46.i.i.i
  ]

while.cond.i39.i.i.i.if.end.i48.i.i.i_crit_edge:  ; preds = %while.cond.i39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.i.i.i

lor.rhs.i42.i.i.i:                                ; preds = %while.cond.i39.i.i.i
  %val3.i40.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i36.i.i.i, i32 1
  %36 = ptrtoint ptr %val3.i40.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val3.i40.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not.i41.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool5.not.i41.i.i.i, label %set_reg_bits.exit49.i.i.i, label %lor.rhs.i42.i.i.i.if.end.i48.i.i.i_crit_edge

lor.rhs.i42.i.i.i.if.end.i48.i.i.i_crit_edge:     ; preds = %lor.rhs.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.i.i.i

if.then.i46.i.i.i:                                ; preds = %while.cond.i39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i45.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i36.i.i.i, i32 1
  %38 = ptrtoint ptr %val13.i45.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -63, ptr %val13.i45.i.i.i, align 1
  br label %if.end.i48.i.i.i

if.end.i48.i.i.i:                                 ; preds = %if.then.i46.i.i.i, %lor.rhs.i42.i.i.i.if.end.i48.i.i.i_crit_edge, %while.cond.i39.i.i.i.if.end.i48.i.i.i_crit_edge
  %inc.i47.i.i.i = add i32 %i.0.i36.i.i.i, 1
  br label %while.cond.i39.i.i.i

set_reg_bits.exit49.i.i.i:                        ; preds = %lor.rhs.i42.i.i.i
  %39 = trunc i32 %17 to i8
  %conv.i.i.i = sub i8 8, %39
  br label %while.cond.i53.i.i.i

while.cond.i53.i.i.i:                             ; preds = %if.end.i62.i.i.i, %set_reg_bits.exit49.i.i.i
  %i.0.i50.i.i.i = phi i32 [ 0, %set_reg_bits.exit49.i.i.i ], [ %inc.i61.i.i.i, %if.end.i62.i.i.i ]
  %arrayidx.i51.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i50.i.i.i
  %40 = ptrtoint ptr %arrayidx.i51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i51.i.i.i, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %41, label %while.cond.i53.i.i.i.if.end.i62.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i56.i.i.i
    i8 10, label %if.then.i60.i.i.i
  ]

while.cond.i53.i.i.i.if.end.i62.i.i.i_crit_edge:  ; preds = %while.cond.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i62.i.i.i

lor.rhs.i56.i.i.i:                                ; preds = %while.cond.i53.i.i.i
  %val3.i54.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i50.i.i.i, i32 1
  %43 = ptrtoint ptr %val3.i54.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val3.i54.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool5.not.i55.i.i.i = icmp eq i8 %44, 0
  br i1 %tobool5.not.i55.i.i.i, label %lor.rhs.i56.i.i.i.while.cond.i67.i.i.i_crit_edge, label %lor.rhs.i56.i.i.i.if.end.i62.i.i.i_crit_edge

lor.rhs.i56.i.i.i.if.end.i62.i.i.i_crit_edge:     ; preds = %lor.rhs.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i62.i.i.i

lor.rhs.i56.i.i.i.while.cond.i67.i.i.i_crit_edge: ; preds = %lor.rhs.i56.i.i.i
  br label %while.cond.i67.i.i.i

if.then.i60.i.i.i:                                ; preds = %while.cond.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i59.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i50.i.i.i, i32 1
  %45 = ptrtoint ptr %val13.i59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i.i, ptr %val13.i59.i.i.i, align 1
  br label %if.end.i62.i.i.i

if.end.i62.i.i.i:                                 ; preds = %if.then.i60.i.i.i, %lor.rhs.i56.i.i.i.if.end.i62.i.i.i_crit_edge, %while.cond.i53.i.i.i.if.end.i62.i.i.i_crit_edge
  %inc.i61.i.i.i = add i32 %i.0.i50.i.i.i, 1
  br label %while.cond.i53.i.i.i

while.cond.i67.i.i.i:                             ; preds = %if.end.i76.i.i.i, %lor.rhs.i56.i.i.i.while.cond.i67.i.i.i_crit_edge
  %i.0.i64.i.i.i = phi i32 [ %inc.i75.i.i.i, %if.end.i76.i.i.i ], [ 0, %lor.rhs.i56.i.i.i.while.cond.i67.i.i.i_crit_edge ]
  %arrayidx.i65.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i64.i.i.i
  %46 = ptrtoint ptr %arrayidx.i65.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i65.i.i.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %47, label %while.cond.i67.i.i.i.if.end.i76.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i70.i.i.i
    i8 11, label %if.then.i74.i.i.i
  ]

while.cond.i67.i.i.i.if.end.i76.i.i.i_crit_edge:  ; preds = %while.cond.i67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i76.i.i.i

lor.rhs.i70.i.i.i:                                ; preds = %while.cond.i67.i.i.i
  %val3.i68.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i64.i.i.i, i32 1
  %49 = ptrtoint ptr %val3.i68.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val3.i68.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool5.not.i69.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool5.not.i69.i.i.i, label %lor.rhs.i70.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge, label %lor.rhs.i70.i.i.i.if.end.i76.i.i.i_crit_edge

lor.rhs.i70.i.i.i.if.end.i76.i.i.i_crit_edge:     ; preds = %lor.rhs.i70.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i76.i.i.i

lor.rhs.i70.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i70.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_mode_bits.exit.i.i

if.then.i74.i.i.i:                                ; preds = %while.cond.i67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i73.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %i.0.i64.i.i.i, i32 1
  %51 = ptrtoint ptr %val13.i73.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 23, ptr %val13.i73.i.i.i, align 1
  br label %if.end.i76.i.i.i

if.end.i76.i.i.i:                                 ; preds = %if.then.i74.i.i.i, %lor.rhs.i70.i.i.i.if.end.i76.i.i.i_crit_edge, %while.cond.i67.i.i.i.if.end.i76.i.i.i_crit_edge
  %inc.i75.i.i.i = add i32 %i.0.i64.i.i.i, 1
  br label %while.cond.i67.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.52, i32 noundef -22, i32 noundef 220) #9
  br label %mxl5007t_set_mode_bits.exit.i.i

mxl5007t_set_mode_bits.exit.i.i:                  ; preds = %do.end.i.i.i, %lor.rhs.i70.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge, %lor.rhs.i26.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge, %lor.rhs.i.i.i.i.mxl5007t_set_mode_bits.exit.i.i_crit_edge
  %if_freq_hz.i.i = getelementptr inbounds %struct.mxl5007t_config, ptr %13, i32 0, i32 3
  %52 = ptrtoint ptr %if_freq_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %if_freq_hz.i.i, align 4
  %invert_if.i.i = getelementptr inbounds %struct.mxl5007t_config, ptr %13, i32 0, i32 4
  %54 = ptrtoint ptr %invert_if.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %invert_if.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %53)
  %55 = icmp ult i32 %53, 11
  br i1 %55, label %switch.lookup, label %do.end.i37.i.i

do.end.i37.i.i:                                   ; preds = %mxl5007t_set_mode_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.53, i32 noundef -22, i32 noundef 265) #9
  br label %mxl5007t_set_if_freq_bits.exit.i.i

switch.lookup:                                    ; preds = %mxl5007t_set_mode_bits.exit.i.i
  %switch.gep = getelementptr inbounds [11 x i8], ptr @switch.table.mxl5007t_set_params, i32 0, i32 %53
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %56)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %while.cond.i.i41.i.i

while.cond.i.i41.i.i:                             ; preds = %if.end.i.i50.i.i, %switch.lookup
  %i.0.i.i39.i.i = phi i32 [ 0, %switch.lookup ], [ %inc.i.i49.i.i, %if.end.i.i50.i.i ]
  %arrayidx.i.i40.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i39.i.i
  %57 = ptrtoint ptr %arrayidx.i.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i40.i.i, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %58, label %while.cond.i.i41.i.i.if.end.i.i50.i.i_crit_edge [
    i8 0, label %lor.rhs.i.i44.i.i
    i8 2, label %if.then.i.i48.i.i
  ]

while.cond.i.i41.i.i.if.end.i.i50.i.i_crit_edge:  ; preds = %while.cond.i.i41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i50.i.i

lor.rhs.i.i44.i.i:                                ; preds = %while.cond.i.i41.i.i
  %val3.i.i42.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i39.i.i, i32 1
  %60 = ptrtoint ptr %val3.i.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %val3.i.i42.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool5.not.i.i43.i.i = icmp eq i8 %61, 0
  br i1 %tobool5.not.i.i43.i.i, label %set_reg_bits.exit.i.i.i, label %lor.rhs.i.i44.i.i.if.end.i.i50.i.i_crit_edge

lor.rhs.i.i44.i.i.if.end.i.i50.i.i_crit_edge:     ; preds = %lor.rhs.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i50.i.i

if.then.i.i48.i.i:                                ; preds = %while.cond.i.i41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i45.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i39.i.i, i32 1
  %62 = ptrtoint ptr %val13.i.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %val13.i.i45.i.i, align 1
  %and.i.i46.i.i = and i8 %63, -16
  %or30.i.i47.i.i = or i8 %and.i.i46.i.i, %switch.load
  store i8 %or30.i.i47.i.i, ptr %val13.i.i45.i.i, align 1
  br label %if.end.i.i50.i.i

if.end.i.i50.i.i:                                 ; preds = %if.then.i.i48.i.i, %lor.rhs.i.i44.i.i.if.end.i.i50.i.i_crit_edge, %while.cond.i.i41.i.i.if.end.i.i50.i.i_crit_edge
  %inc.i.i49.i.i = add i32 %i.0.i.i39.i.i, 1
  br label %while.cond.i.i41.i.i

set_reg_bits.exit.i.i.i:                          ; preds = %lor.rhs.i.i44.i.i
  %64 = lshr i8 %bf.load.i.i, 3
  %65 = and i8 %64, 16
  br label %while.cond.i23.i54.i.i

while.cond.i23.i54.i.i:                           ; preds = %if.end.i34.i63.i.i, %set_reg_bits.exit.i.i.i
  %i.0.i20.i52.i.i = phi i32 [ 0, %set_reg_bits.exit.i.i.i ], [ %inc.i33.i62.i.i, %if.end.i34.i63.i.i ]
  %arrayidx.i21.i53.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i52.i.i
  %66 = ptrtoint ptr %arrayidx.i21.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i21.i53.i.i, align 1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %67, label %while.cond.i23.i54.i.i.if.end.i34.i63.i.i_crit_edge [
    i8 0, label %lor.rhs.i26.i57.i.i
    i8 2, label %if.then.i32.i61.i.i
  ]

while.cond.i23.i54.i.i.if.end.i34.i63.i.i_crit_edge: ; preds = %while.cond.i23.i54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34.i63.i.i

lor.rhs.i26.i57.i.i:                              ; preds = %while.cond.i23.i54.i.i
  %val3.i24.i55.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i52.i.i, i32 1
  %69 = ptrtoint ptr %val3.i24.i55.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %val3.i24.i55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool5.not.i25.i56.i.i = icmp eq i8 %70, 0
  br i1 %tobool5.not.i25.i56.i.i, label %set_reg_bits.exit35.i.i.i, label %lor.rhs.i26.i57.i.i.if.end.i34.i63.i.i_crit_edge

lor.rhs.i26.i57.i.i.if.end.i34.i63.i.i_crit_edge: ; preds = %lor.rhs.i26.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34.i63.i.i

if.then.i32.i61.i.i:                              ; preds = %while.cond.i23.i54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i29.i58.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i20.i52.i.i, i32 1
  %71 = ptrtoint ptr %val13.i29.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %val13.i29.i58.i.i, align 1
  %and.i30.i59.i.i = and i8 %72, -17
  %or30.i31.i60.i.i = or i8 %and.i30.i59.i.i, %65
  store i8 %or30.i31.i60.i.i, ptr %val13.i29.i58.i.i, align 1
  br label %if.end.i34.i63.i.i

if.end.i34.i63.i.i:                               ; preds = %if.then.i32.i61.i.i, %lor.rhs.i26.i57.i.i.if.end.i34.i63.i.i_crit_edge, %while.cond.i23.i54.i.i.if.end.i34.i63.i.i_crit_edge
  %inc.i33.i62.i.i = add i32 %i.0.i20.i52.i.i, 1
  br label %while.cond.i23.i54.i.i

set_reg_bits.exit35.i.i.i:                        ; preds = %lor.rhs.i26.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %if_freq15.i.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 8
  %73 = ptrtoint ptr %if_freq15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %53, ptr %if_freq15.i.i.i, align 4
  br label %mxl5007t_set_if_freq_bits.exit.i.i

mxl5007t_set_if_freq_bits.exit.i.i:               ; preds = %set_reg_bits.exit35.i.i.i, %do.end.i37.i.i
  %xtal_freq_hz.i.i = getelementptr inbounds %struct.mxl5007t_config, ptr %13, i32 0, i32 2
  %74 = ptrtoint ptr %xtal_freq_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xtal_freq_hz.i.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %75, label %do.end.i81.i.i [
    i32 0, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i.i68.i.i_crit_edge
    i32 1, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i115.i.i.i_crit_edge
    i32 2, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i146.i.i.i_crit_edge
    i32 3, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i178.i.i.i_crit_edge
    i32 4, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i210.i.i.i_crit_edge
    i32 5, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i242.i.i.i_crit_edge
    i32 6, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i274.i.i.i_crit_edge
    i32 7, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i306.i.i.i_crit_edge
    i32 8, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i338.i.i.i_crit_edge
    i32 9, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i370.i.i.i_crit_edge
    i32 10, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i402.i.i.i_crit_edge
    i32 11, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i434.i.i.i_crit_edge
    i32 12, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i466.i.i.i_crit_edge
    i32 13, label %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i498.i.i.i_crit_edge
  ]

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i498.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i498.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i466.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i466.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i434.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i434.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i402.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i402.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i370.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i370.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i338.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i338.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i306.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i306.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i274.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i274.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i242.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i242.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i210.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i210.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i178.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i178.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i146.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i146.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i115.i.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i115.i.i.i

mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i.i68.i.i_crit_edge: ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  br label %while.cond.i.i68.i.i

while.cond.i.i68.i.i:                             ; preds = %if.end.i.i76.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i.i68.i.i_crit_edge
  %i.0.i.i66.i.i = phi i32 [ %inc.i.i75.i.i, %if.end.i.i76.i.i ], [ %75, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i.i68.i.i_crit_edge ]
  %arrayidx.i.i67.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i66.i.i
  %77 = ptrtoint ptr %arrayidx.i.i67.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i67.i.i, align 1
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %78, label %while.cond.i.i68.i.i.if.end.i.i76.i.i_crit_edge [
    i8 0, label %lor.rhs.i.i71.i.i
    i8 3, label %if.then.i.i74.i.i
  ]

while.cond.i.i68.i.i.if.end.i.i76.i.i_crit_edge:  ; preds = %while.cond.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i76.i.i

lor.rhs.i.i71.i.i:                                ; preds = %while.cond.i.i68.i.i
  %val3.i.i69.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i66.i.i, i32 1
  %80 = ptrtoint ptr %val3.i.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %val3.i.i69.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool5.not.i.i70.i.i = icmp eq i8 %81, 0
  br i1 %tobool5.not.i.i70.i.i, label %lor.rhs.i.i71.i.i.while.cond.i100.i.i.i_crit_edge, label %lor.rhs.i.i71.i.i.if.end.i.i76.i.i_crit_edge

lor.rhs.i.i71.i.i.if.end.i.i76.i.i_crit_edge:     ; preds = %lor.rhs.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i76.i.i

lor.rhs.i.i71.i.i.while.cond.i100.i.i.i_crit_edge: ; preds = %lor.rhs.i.i71.i.i
  br label %while.cond.i100.i.i.i

if.then.i.i74.i.i:                                ; preds = %while.cond.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i72.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i66.i.i, i32 1
  %82 = ptrtoint ptr %val13.i.i72.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %val13.i.i72.i.i, align 1
  %and.i.i73.i.i = and i8 %83, 15
  store i8 %and.i.i73.i.i, ptr %val13.i.i72.i.i, align 1
  br label %if.end.i.i76.i.i

if.end.i.i76.i.i:                                 ; preds = %if.then.i.i74.i.i, %lor.rhs.i.i71.i.i.if.end.i.i76.i.i_crit_edge, %while.cond.i.i68.i.i.if.end.i.i76.i.i_crit_edge
  %inc.i.i75.i.i = add i32 %i.0.i.i66.i.i, 1
  br label %while.cond.i.i68.i.i

while.cond.i100.i.i.i:                            ; preds = %if.end.i110.i.i.i, %lor.rhs.i.i71.i.i.while.cond.i100.i.i.i_crit_edge
  %i.0.i97.i.i.i = phi i32 [ %inc.i109.i.i.i, %if.end.i110.i.i.i ], [ 0, %lor.rhs.i.i71.i.i.while.cond.i100.i.i.i_crit_edge ]
  %arrayidx.i98.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i97.i.i.i
  %84 = ptrtoint ptr %arrayidx.i98.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i98.i.i.i, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %85, label %while.cond.i100.i.i.i.if.end.i110.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i103.i.i.i
    i8 5, label %if.then.i108.i.i.i
  ]

while.cond.i100.i.i.i.if.end.i110.i.i.i_crit_edge: ; preds = %while.cond.i100.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i110.i.i.i

lor.rhs.i103.i.i.i:                               ; preds = %while.cond.i100.i.i.i
  %val3.i101.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i97.i.i.i, i32 1
  %87 = ptrtoint ptr %val3.i101.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %val3.i101.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool5.not.i102.i.i.i = icmp eq i8 %88, 0
  br i1 %tobool5.not.i102.i.i.i, label %lor.rhs.i103.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i103.i.i.i.if.end.i110.i.i.i_crit_edge

lor.rhs.i103.i.i.i.if.end.i110.i.i.i_crit_edge:   ; preds = %lor.rhs.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i110.i.i.i

lor.rhs.i103.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i108.i.i.i:                               ; preds = %while.cond.i100.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i106.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i97.i.i.i, i32 1
  %89 = ptrtoint ptr %val13.i106.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %val13.i106.i.i.i, align 1
  %and.i107.i.i.i = and i8 %90, -16
  store i8 %and.i107.i.i.i, ptr %val13.i106.i.i.i, align 1
  br label %if.end.i110.i.i.i

if.end.i110.i.i.i:                                ; preds = %if.then.i108.i.i.i, %lor.rhs.i103.i.i.i.if.end.i110.i.i.i_crit_edge, %while.cond.i100.i.i.i.if.end.i110.i.i.i_crit_edge
  %inc.i109.i.i.i = add i32 %i.0.i97.i.i.i, 1
  br label %while.cond.i100.i.i.i

while.cond.i115.i.i.i:                            ; preds = %if.end.i125.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i115.i.i.i_crit_edge
  %i.0.i112.i.i.i = phi i32 [ %inc.i124.i.i.i, %if.end.i125.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i115.i.i.i_crit_edge ]
  %arrayidx.i113.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i112.i.i.i
  %91 = ptrtoint ptr %arrayidx.i113.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i113.i.i.i, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %92, label %while.cond.i115.i.i.i.if.end.i125.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i118.i.i.i
    i8 3, label %if.then.i123.i.i.i
  ]

while.cond.i115.i.i.i.if.end.i125.i.i.i_crit_edge: ; preds = %while.cond.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i125.i.i.i

lor.rhs.i118.i.i.i:                               ; preds = %while.cond.i115.i.i.i
  %val3.i116.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i112.i.i.i, i32 1
  %94 = ptrtoint ptr %val3.i116.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %val3.i116.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool5.not.i117.i.i.i = icmp eq i8 %95, 0
  br i1 %tobool5.not.i117.i.i.i, label %lor.rhs.i118.i.i.i.while.cond.i130.i.i.i_crit_edge, label %lor.rhs.i118.i.i.i.if.end.i125.i.i.i_crit_edge

lor.rhs.i118.i.i.i.if.end.i125.i.i.i_crit_edge:   ; preds = %lor.rhs.i118.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i125.i.i.i

lor.rhs.i118.i.i.i.while.cond.i130.i.i.i_crit_edge: ; preds = %lor.rhs.i118.i.i.i
  br label %while.cond.i130.i.i.i

if.then.i123.i.i.i:                               ; preds = %while.cond.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i121.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i112.i.i.i, i32 1
  %96 = ptrtoint ptr %val13.i121.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val13.i121.i.i.i, align 1
  %and.i122.i.i.i = and i8 %97, 15
  %or30.i.i78.i.i = or i8 %and.i122.i.i.i, 16
  store i8 %or30.i.i78.i.i, ptr %val13.i121.i.i.i, align 1
  br label %if.end.i125.i.i.i

if.end.i125.i.i.i:                                ; preds = %if.then.i123.i.i.i, %lor.rhs.i118.i.i.i.if.end.i125.i.i.i_crit_edge, %while.cond.i115.i.i.i.if.end.i125.i.i.i_crit_edge
  %inc.i124.i.i.i = add i32 %i.0.i112.i.i.i, 1
  br label %while.cond.i115.i.i.i

while.cond.i130.i.i.i:                            ; preds = %if.end.i141.i.i.i, %lor.rhs.i118.i.i.i.while.cond.i130.i.i.i_crit_edge
  %i.0.i127.i.i.i = phi i32 [ %inc.i140.i.i.i, %if.end.i141.i.i.i ], [ 0, %lor.rhs.i118.i.i.i.while.cond.i130.i.i.i_crit_edge ]
  %arrayidx.i128.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i127.i.i.i
  %98 = ptrtoint ptr %arrayidx.i128.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i128.i.i.i, align 1
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %99, label %while.cond.i130.i.i.i.if.end.i141.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i133.i.i.i
    i8 5, label %if.then.i139.i.i.i
  ]

while.cond.i130.i.i.i.if.end.i141.i.i.i_crit_edge: ; preds = %while.cond.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i141.i.i.i

lor.rhs.i133.i.i.i:                               ; preds = %while.cond.i130.i.i.i
  %val3.i131.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i127.i.i.i, i32 1
  %101 = ptrtoint ptr %val3.i131.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %val3.i131.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool5.not.i132.i.i.i = icmp eq i8 %102, 0
  br i1 %tobool5.not.i132.i.i.i, label %lor.rhs.i133.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i133.i.i.i.if.end.i141.i.i.i_crit_edge

lor.rhs.i133.i.i.i.if.end.i141.i.i.i_crit_edge:   ; preds = %lor.rhs.i133.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i141.i.i.i

lor.rhs.i133.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i133.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i139.i.i.i:                               ; preds = %while.cond.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i136.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i127.i.i.i, i32 1
  %103 = ptrtoint ptr %val13.i136.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %val13.i136.i.i.i, align 1
  %and.i137.i.i.i = and i8 %104, -16
  %or30.i138.i.i.i = or i8 %and.i137.i.i.i, 1
  store i8 %or30.i138.i.i.i, ptr %val13.i136.i.i.i, align 1
  br label %if.end.i141.i.i.i

if.end.i141.i.i.i:                                ; preds = %if.then.i139.i.i.i, %lor.rhs.i133.i.i.i.if.end.i141.i.i.i_crit_edge, %while.cond.i130.i.i.i.if.end.i141.i.i.i_crit_edge
  %inc.i140.i.i.i = add i32 %i.0.i127.i.i.i, 1
  br label %while.cond.i130.i.i.i

while.cond.i146.i.i.i:                            ; preds = %if.end.i157.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i146.i.i.i_crit_edge
  %i.0.i143.i.i.i = phi i32 [ %inc.i156.i.i.i, %if.end.i157.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i146.i.i.i_crit_edge ]
  %arrayidx.i144.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i143.i.i.i
  %105 = ptrtoint ptr %arrayidx.i144.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i144.i.i.i, align 1
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %106, label %while.cond.i146.i.i.i.if.end.i157.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i149.i.i.i
    i8 3, label %if.then.i155.i.i.i
  ]

while.cond.i146.i.i.i.if.end.i157.i.i.i_crit_edge: ; preds = %while.cond.i146.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i157.i.i.i

lor.rhs.i149.i.i.i:                               ; preds = %while.cond.i146.i.i.i
  %val3.i147.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i143.i.i.i, i32 1
  %108 = ptrtoint ptr %val3.i147.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %val3.i147.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool5.not.i148.i.i.i = icmp eq i8 %109, 0
  br i1 %tobool5.not.i148.i.i.i, label %lor.rhs.i149.i.i.i.while.cond.i162.i.i.i_crit_edge, label %lor.rhs.i149.i.i.i.if.end.i157.i.i.i_crit_edge

lor.rhs.i149.i.i.i.if.end.i157.i.i.i_crit_edge:   ; preds = %lor.rhs.i149.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i157.i.i.i

lor.rhs.i149.i.i.i.while.cond.i162.i.i.i_crit_edge: ; preds = %lor.rhs.i149.i.i.i
  br label %while.cond.i162.i.i.i

if.then.i155.i.i.i:                               ; preds = %while.cond.i146.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i152.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i143.i.i.i, i32 1
  %110 = ptrtoint ptr %val13.i152.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %val13.i152.i.i.i, align 1
  %and.i153.i.i.i = and i8 %111, 15
  %or30.i154.i.i.i = or i8 %and.i153.i.i.i, 32
  store i8 %or30.i154.i.i.i, ptr %val13.i152.i.i.i, align 1
  br label %if.end.i157.i.i.i

if.end.i157.i.i.i:                                ; preds = %if.then.i155.i.i.i, %lor.rhs.i149.i.i.i.if.end.i157.i.i.i_crit_edge, %while.cond.i146.i.i.i.if.end.i157.i.i.i_crit_edge
  %inc.i156.i.i.i = add i32 %i.0.i143.i.i.i, 1
  br label %while.cond.i146.i.i.i

while.cond.i162.i.i.i:                            ; preds = %if.end.i173.i.i.i, %lor.rhs.i149.i.i.i.while.cond.i162.i.i.i_crit_edge
  %i.0.i159.i.i.i = phi i32 [ %inc.i172.i.i.i, %if.end.i173.i.i.i ], [ 0, %lor.rhs.i149.i.i.i.while.cond.i162.i.i.i_crit_edge ]
  %arrayidx.i160.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i159.i.i.i
  %112 = ptrtoint ptr %arrayidx.i160.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i160.i.i.i, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %113, label %while.cond.i162.i.i.i.if.end.i173.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i165.i.i.i
    i8 5, label %if.then.i171.i.i.i
  ]

while.cond.i162.i.i.i.if.end.i173.i.i.i_crit_edge: ; preds = %while.cond.i162.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i173.i.i.i

lor.rhs.i165.i.i.i:                               ; preds = %while.cond.i162.i.i.i
  %val3.i163.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i159.i.i.i, i32 1
  %115 = ptrtoint ptr %val3.i163.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %val3.i163.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool5.not.i164.i.i.i = icmp eq i8 %116, 0
  br i1 %tobool5.not.i164.i.i.i, label %lor.rhs.i165.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i165.i.i.i.if.end.i173.i.i.i_crit_edge

lor.rhs.i165.i.i.i.if.end.i173.i.i.i_crit_edge:   ; preds = %lor.rhs.i165.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i173.i.i.i

lor.rhs.i165.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i165.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i171.i.i.i:                               ; preds = %while.cond.i162.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i168.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i159.i.i.i, i32 1
  %117 = ptrtoint ptr %val13.i168.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %val13.i168.i.i.i, align 1
  %and.i169.i.i.i = and i8 %118, -16
  %or30.i170.i.i.i = or i8 %and.i169.i.i.i, 2
  store i8 %or30.i170.i.i.i, ptr %val13.i168.i.i.i, align 1
  br label %if.end.i173.i.i.i

if.end.i173.i.i.i:                                ; preds = %if.then.i171.i.i.i, %lor.rhs.i165.i.i.i.if.end.i173.i.i.i_crit_edge, %while.cond.i162.i.i.i.if.end.i173.i.i.i_crit_edge
  %inc.i172.i.i.i = add i32 %i.0.i159.i.i.i, 1
  br label %while.cond.i162.i.i.i

while.cond.i178.i.i.i:                            ; preds = %if.end.i189.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i178.i.i.i_crit_edge
  %i.0.i175.i.i.i = phi i32 [ %inc.i188.i.i.i, %if.end.i189.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i178.i.i.i_crit_edge ]
  %arrayidx.i176.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i175.i.i.i
  %119 = ptrtoint ptr %arrayidx.i176.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i176.i.i.i, align 1
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %120, label %while.cond.i178.i.i.i.if.end.i189.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i181.i.i.i
    i8 3, label %if.then.i187.i.i.i
  ]

while.cond.i178.i.i.i.if.end.i189.i.i.i_crit_edge: ; preds = %while.cond.i178.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i189.i.i.i

lor.rhs.i181.i.i.i:                               ; preds = %while.cond.i178.i.i.i
  %val3.i179.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i175.i.i.i, i32 1
  %122 = ptrtoint ptr %val3.i179.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %val3.i179.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool5.not.i180.i.i.i = icmp eq i8 %123, 0
  br i1 %tobool5.not.i180.i.i.i, label %lor.rhs.i181.i.i.i.while.cond.i194.i.i.i_crit_edge, label %lor.rhs.i181.i.i.i.if.end.i189.i.i.i_crit_edge

lor.rhs.i181.i.i.i.if.end.i189.i.i.i_crit_edge:   ; preds = %lor.rhs.i181.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i189.i.i.i

lor.rhs.i181.i.i.i.while.cond.i194.i.i.i_crit_edge: ; preds = %lor.rhs.i181.i.i.i
  br label %while.cond.i194.i.i.i

if.then.i187.i.i.i:                               ; preds = %while.cond.i178.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i184.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i175.i.i.i, i32 1
  %124 = ptrtoint ptr %val13.i184.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %val13.i184.i.i.i, align 1
  %and.i185.i.i.i = and i8 %125, 15
  %or30.i186.i.i.i = or i8 %and.i185.i.i.i, 48
  store i8 %or30.i186.i.i.i, ptr %val13.i184.i.i.i, align 1
  br label %if.end.i189.i.i.i

if.end.i189.i.i.i:                                ; preds = %if.then.i187.i.i.i, %lor.rhs.i181.i.i.i.if.end.i189.i.i.i_crit_edge, %while.cond.i178.i.i.i.if.end.i189.i.i.i_crit_edge
  %inc.i188.i.i.i = add i32 %i.0.i175.i.i.i, 1
  br label %while.cond.i178.i.i.i

while.cond.i194.i.i.i:                            ; preds = %if.end.i205.i.i.i, %lor.rhs.i181.i.i.i.while.cond.i194.i.i.i_crit_edge
  %i.0.i191.i.i.i = phi i32 [ %inc.i204.i.i.i, %if.end.i205.i.i.i ], [ 0, %lor.rhs.i181.i.i.i.while.cond.i194.i.i.i_crit_edge ]
  %arrayidx.i192.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i191.i.i.i
  %126 = ptrtoint ptr %arrayidx.i192.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i192.i.i.i, align 1
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %127, label %while.cond.i194.i.i.i.if.end.i205.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i197.i.i.i
    i8 5, label %if.then.i203.i.i.i
  ]

while.cond.i194.i.i.i.if.end.i205.i.i.i_crit_edge: ; preds = %while.cond.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i205.i.i.i

lor.rhs.i197.i.i.i:                               ; preds = %while.cond.i194.i.i.i
  %val3.i195.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i191.i.i.i, i32 1
  %129 = ptrtoint ptr %val3.i195.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %val3.i195.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool5.not.i196.i.i.i = icmp eq i8 %130, 0
  br i1 %tobool5.not.i196.i.i.i, label %lor.rhs.i197.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i197.i.i.i.if.end.i205.i.i.i_crit_edge

lor.rhs.i197.i.i.i.if.end.i205.i.i.i_crit_edge:   ; preds = %lor.rhs.i197.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i205.i.i.i

lor.rhs.i197.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i197.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i203.i.i.i:                               ; preds = %while.cond.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i200.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i191.i.i.i, i32 1
  %131 = ptrtoint ptr %val13.i200.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %val13.i200.i.i.i, align 1
  %and.i201.i.i.i = and i8 %132, -16
  %or30.i202.i.i.i = or i8 %and.i201.i.i.i, 3
  store i8 %or30.i202.i.i.i, ptr %val13.i200.i.i.i, align 1
  br label %if.end.i205.i.i.i

if.end.i205.i.i.i:                                ; preds = %if.then.i203.i.i.i, %lor.rhs.i197.i.i.i.if.end.i205.i.i.i_crit_edge, %while.cond.i194.i.i.i.if.end.i205.i.i.i_crit_edge
  %inc.i204.i.i.i = add i32 %i.0.i191.i.i.i, 1
  br label %while.cond.i194.i.i.i

while.cond.i210.i.i.i:                            ; preds = %if.end.i221.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i210.i.i.i_crit_edge
  %i.0.i207.i.i.i = phi i32 [ %inc.i220.i.i.i, %if.end.i221.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i210.i.i.i_crit_edge ]
  %arrayidx.i208.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i207.i.i.i
  %133 = ptrtoint ptr %arrayidx.i208.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i208.i.i.i, align 1
  %135 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %134, label %while.cond.i210.i.i.i.if.end.i221.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i213.i.i.i
    i8 3, label %if.then.i219.i.i.i
  ]

while.cond.i210.i.i.i.if.end.i221.i.i.i_crit_edge: ; preds = %while.cond.i210.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i221.i.i.i

lor.rhs.i213.i.i.i:                               ; preds = %while.cond.i210.i.i.i
  %val3.i211.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i207.i.i.i, i32 1
  %136 = ptrtoint ptr %val3.i211.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %val3.i211.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool5.not.i212.i.i.i = icmp eq i8 %137, 0
  br i1 %tobool5.not.i212.i.i.i, label %lor.rhs.i213.i.i.i.while.cond.i226.i.i.i_crit_edge, label %lor.rhs.i213.i.i.i.if.end.i221.i.i.i_crit_edge

lor.rhs.i213.i.i.i.if.end.i221.i.i.i_crit_edge:   ; preds = %lor.rhs.i213.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i221.i.i.i

lor.rhs.i213.i.i.i.while.cond.i226.i.i.i_crit_edge: ; preds = %lor.rhs.i213.i.i.i
  br label %while.cond.i226.i.i.i

if.then.i219.i.i.i:                               ; preds = %while.cond.i210.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i216.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i207.i.i.i, i32 1
  %138 = ptrtoint ptr %val13.i216.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %val13.i216.i.i.i, align 1
  %and.i217.i.i.i = and i8 %139, 15
  %or30.i218.i.i.i = or i8 %and.i217.i.i.i, 64
  store i8 %or30.i218.i.i.i, ptr %val13.i216.i.i.i, align 1
  br label %if.end.i221.i.i.i

if.end.i221.i.i.i:                                ; preds = %if.then.i219.i.i.i, %lor.rhs.i213.i.i.i.if.end.i221.i.i.i_crit_edge, %while.cond.i210.i.i.i.if.end.i221.i.i.i_crit_edge
  %inc.i220.i.i.i = add i32 %i.0.i207.i.i.i, 1
  br label %while.cond.i210.i.i.i

while.cond.i226.i.i.i:                            ; preds = %if.end.i237.i.i.i, %lor.rhs.i213.i.i.i.while.cond.i226.i.i.i_crit_edge
  %i.0.i223.i.i.i = phi i32 [ %inc.i236.i.i.i, %if.end.i237.i.i.i ], [ 0, %lor.rhs.i213.i.i.i.while.cond.i226.i.i.i_crit_edge ]
  %arrayidx.i224.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i223.i.i.i
  %140 = ptrtoint ptr %arrayidx.i224.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i224.i.i.i, align 1
  %142 = zext i8 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %141, label %while.cond.i226.i.i.i.if.end.i237.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i229.i.i.i
    i8 5, label %if.then.i235.i.i.i
  ]

while.cond.i226.i.i.i.if.end.i237.i.i.i_crit_edge: ; preds = %while.cond.i226.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i237.i.i.i

lor.rhs.i229.i.i.i:                               ; preds = %while.cond.i226.i.i.i
  %val3.i227.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i223.i.i.i, i32 1
  %143 = ptrtoint ptr %val3.i227.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %val3.i227.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool5.not.i228.i.i.i = icmp eq i8 %144, 0
  br i1 %tobool5.not.i228.i.i.i, label %lor.rhs.i229.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i229.i.i.i.if.end.i237.i.i.i_crit_edge

lor.rhs.i229.i.i.i.if.end.i237.i.i.i_crit_edge:   ; preds = %lor.rhs.i229.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i237.i.i.i

lor.rhs.i229.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i229.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i235.i.i.i:                               ; preds = %while.cond.i226.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i232.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i223.i.i.i, i32 1
  %145 = ptrtoint ptr %val13.i232.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %val13.i232.i.i.i, align 1
  %and.i233.i.i.i = and i8 %146, -16
  %or30.i234.i.i.i = or i8 %and.i233.i.i.i, 4
  store i8 %or30.i234.i.i.i, ptr %val13.i232.i.i.i, align 1
  br label %if.end.i237.i.i.i

if.end.i237.i.i.i:                                ; preds = %if.then.i235.i.i.i, %lor.rhs.i229.i.i.i.if.end.i237.i.i.i_crit_edge, %while.cond.i226.i.i.i.if.end.i237.i.i.i_crit_edge
  %inc.i236.i.i.i = add i32 %i.0.i223.i.i.i, 1
  br label %while.cond.i226.i.i.i

while.cond.i242.i.i.i:                            ; preds = %if.end.i253.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i242.i.i.i_crit_edge
  %i.0.i239.i.i.i = phi i32 [ %inc.i252.i.i.i, %if.end.i253.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i242.i.i.i_crit_edge ]
  %arrayidx.i240.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i239.i.i.i
  %147 = ptrtoint ptr %arrayidx.i240.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i240.i.i.i, align 1
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %148, label %while.cond.i242.i.i.i.if.end.i253.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i245.i.i.i
    i8 3, label %if.then.i251.i.i.i
  ]

while.cond.i242.i.i.i.if.end.i253.i.i.i_crit_edge: ; preds = %while.cond.i242.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i253.i.i.i

lor.rhs.i245.i.i.i:                               ; preds = %while.cond.i242.i.i.i
  %val3.i243.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i239.i.i.i, i32 1
  %150 = ptrtoint ptr %val3.i243.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %val3.i243.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool5.not.i244.i.i.i = icmp eq i8 %151, 0
  br i1 %tobool5.not.i244.i.i.i, label %lor.rhs.i245.i.i.i.while.cond.i258.i.i.i_crit_edge, label %lor.rhs.i245.i.i.i.if.end.i253.i.i.i_crit_edge

lor.rhs.i245.i.i.i.if.end.i253.i.i.i_crit_edge:   ; preds = %lor.rhs.i245.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i253.i.i.i

lor.rhs.i245.i.i.i.while.cond.i258.i.i.i_crit_edge: ; preds = %lor.rhs.i245.i.i.i
  br label %while.cond.i258.i.i.i

if.then.i251.i.i.i:                               ; preds = %while.cond.i242.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i248.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i239.i.i.i, i32 1
  %152 = ptrtoint ptr %val13.i248.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %val13.i248.i.i.i, align 1
  %and.i249.i.i.i = and i8 %153, 15
  %or30.i250.i.i.i = or i8 %and.i249.i.i.i, 80
  store i8 %or30.i250.i.i.i, ptr %val13.i248.i.i.i, align 1
  br label %if.end.i253.i.i.i

if.end.i253.i.i.i:                                ; preds = %if.then.i251.i.i.i, %lor.rhs.i245.i.i.i.if.end.i253.i.i.i_crit_edge, %while.cond.i242.i.i.i.if.end.i253.i.i.i_crit_edge
  %inc.i252.i.i.i = add i32 %i.0.i239.i.i.i, 1
  br label %while.cond.i242.i.i.i

while.cond.i258.i.i.i:                            ; preds = %if.end.i269.i.i.i, %lor.rhs.i245.i.i.i.while.cond.i258.i.i.i_crit_edge
  %i.0.i255.i.i.i = phi i32 [ %inc.i268.i.i.i, %if.end.i269.i.i.i ], [ 0, %lor.rhs.i245.i.i.i.while.cond.i258.i.i.i_crit_edge ]
  %arrayidx.i256.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i255.i.i.i
  %154 = ptrtoint ptr %arrayidx.i256.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i256.i.i.i, align 1
  %156 = zext i8 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %155, label %while.cond.i258.i.i.i.if.end.i269.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i261.i.i.i
    i8 5, label %if.then.i267.i.i.i
  ]

while.cond.i258.i.i.i.if.end.i269.i.i.i_crit_edge: ; preds = %while.cond.i258.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i269.i.i.i

lor.rhs.i261.i.i.i:                               ; preds = %while.cond.i258.i.i.i
  %val3.i259.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i255.i.i.i, i32 1
  %157 = ptrtoint ptr %val3.i259.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %val3.i259.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool5.not.i260.i.i.i = icmp eq i8 %158, 0
  br i1 %tobool5.not.i260.i.i.i, label %lor.rhs.i261.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i261.i.i.i.if.end.i269.i.i.i_crit_edge

lor.rhs.i261.i.i.i.if.end.i269.i.i.i_crit_edge:   ; preds = %lor.rhs.i261.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i269.i.i.i

lor.rhs.i261.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i261.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i267.i.i.i:                               ; preds = %while.cond.i258.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i264.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i255.i.i.i, i32 1
  %159 = ptrtoint ptr %val13.i264.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %val13.i264.i.i.i, align 1
  %and.i265.i.i.i = and i8 %160, -16
  %or30.i266.i.i.i = or i8 %and.i265.i.i.i, 5
  store i8 %or30.i266.i.i.i, ptr %val13.i264.i.i.i, align 1
  br label %if.end.i269.i.i.i

if.end.i269.i.i.i:                                ; preds = %if.then.i267.i.i.i, %lor.rhs.i261.i.i.i.if.end.i269.i.i.i_crit_edge, %while.cond.i258.i.i.i.if.end.i269.i.i.i_crit_edge
  %inc.i268.i.i.i = add i32 %i.0.i255.i.i.i, 1
  br label %while.cond.i258.i.i.i

while.cond.i274.i.i.i:                            ; preds = %if.end.i285.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i274.i.i.i_crit_edge
  %i.0.i271.i.i.i = phi i32 [ %inc.i284.i.i.i, %if.end.i285.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i274.i.i.i_crit_edge ]
  %arrayidx.i272.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i271.i.i.i
  %161 = ptrtoint ptr %arrayidx.i272.i.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i272.i.i.i, align 1
  %163 = zext i8 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %162, label %while.cond.i274.i.i.i.if.end.i285.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i277.i.i.i
    i8 3, label %if.then.i283.i.i.i
  ]

while.cond.i274.i.i.i.if.end.i285.i.i.i_crit_edge: ; preds = %while.cond.i274.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i285.i.i.i

lor.rhs.i277.i.i.i:                               ; preds = %while.cond.i274.i.i.i
  %val3.i275.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i271.i.i.i, i32 1
  %164 = ptrtoint ptr %val3.i275.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %val3.i275.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool5.not.i276.i.i.i = icmp eq i8 %165, 0
  br i1 %tobool5.not.i276.i.i.i, label %lor.rhs.i277.i.i.i.while.cond.i290.i.i.i_crit_edge, label %lor.rhs.i277.i.i.i.if.end.i285.i.i.i_crit_edge

lor.rhs.i277.i.i.i.if.end.i285.i.i.i_crit_edge:   ; preds = %lor.rhs.i277.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i285.i.i.i

lor.rhs.i277.i.i.i.while.cond.i290.i.i.i_crit_edge: ; preds = %lor.rhs.i277.i.i.i
  br label %while.cond.i290.i.i.i

if.then.i283.i.i.i:                               ; preds = %while.cond.i274.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i280.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i271.i.i.i, i32 1
  %166 = ptrtoint ptr %val13.i280.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %val13.i280.i.i.i, align 1
  %and.i281.i.i.i = and i8 %167, 15
  %or30.i282.i.i.i = or i8 %and.i281.i.i.i, 96
  store i8 %or30.i282.i.i.i, ptr %val13.i280.i.i.i, align 1
  br label %if.end.i285.i.i.i

if.end.i285.i.i.i:                                ; preds = %if.then.i283.i.i.i, %lor.rhs.i277.i.i.i.if.end.i285.i.i.i_crit_edge, %while.cond.i274.i.i.i.if.end.i285.i.i.i_crit_edge
  %inc.i284.i.i.i = add i32 %i.0.i271.i.i.i, 1
  br label %while.cond.i274.i.i.i

while.cond.i290.i.i.i:                            ; preds = %if.end.i301.i.i.i, %lor.rhs.i277.i.i.i.while.cond.i290.i.i.i_crit_edge
  %i.0.i287.i.i.i = phi i32 [ %inc.i300.i.i.i, %if.end.i301.i.i.i ], [ 0, %lor.rhs.i277.i.i.i.while.cond.i290.i.i.i_crit_edge ]
  %arrayidx.i288.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i287.i.i.i
  %168 = ptrtoint ptr %arrayidx.i288.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i288.i.i.i, align 1
  %170 = zext i8 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %169, label %while.cond.i290.i.i.i.if.end.i301.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i293.i.i.i
    i8 5, label %if.then.i299.i.i.i
  ]

while.cond.i290.i.i.i.if.end.i301.i.i.i_crit_edge: ; preds = %while.cond.i290.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i301.i.i.i

lor.rhs.i293.i.i.i:                               ; preds = %while.cond.i290.i.i.i
  %val3.i291.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i287.i.i.i, i32 1
  %171 = ptrtoint ptr %val3.i291.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %val3.i291.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool5.not.i292.i.i.i = icmp eq i8 %172, 0
  br i1 %tobool5.not.i292.i.i.i, label %lor.rhs.i293.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i293.i.i.i.if.end.i301.i.i.i_crit_edge

lor.rhs.i293.i.i.i.if.end.i301.i.i.i_crit_edge:   ; preds = %lor.rhs.i293.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i301.i.i.i

lor.rhs.i293.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i293.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i299.i.i.i:                               ; preds = %while.cond.i290.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i296.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i287.i.i.i, i32 1
  %173 = ptrtoint ptr %val13.i296.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val13.i296.i.i.i, align 1
  %and.i297.i.i.i = and i8 %174, -16
  %or30.i298.i.i.i = or i8 %and.i297.i.i.i, 6
  store i8 %or30.i298.i.i.i, ptr %val13.i296.i.i.i, align 1
  br label %if.end.i301.i.i.i

if.end.i301.i.i.i:                                ; preds = %if.then.i299.i.i.i, %lor.rhs.i293.i.i.i.if.end.i301.i.i.i_crit_edge, %while.cond.i290.i.i.i.if.end.i301.i.i.i_crit_edge
  %inc.i300.i.i.i = add i32 %i.0.i287.i.i.i, 1
  br label %while.cond.i290.i.i.i

while.cond.i306.i.i.i:                            ; preds = %if.end.i317.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i306.i.i.i_crit_edge
  %i.0.i303.i.i.i = phi i32 [ %inc.i316.i.i.i, %if.end.i317.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i306.i.i.i_crit_edge ]
  %arrayidx.i304.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i303.i.i.i
  %175 = ptrtoint ptr %arrayidx.i304.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i304.i.i.i, align 1
  %177 = zext i8 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %176, label %while.cond.i306.i.i.i.if.end.i317.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i309.i.i.i
    i8 3, label %if.then.i315.i.i.i
  ]

while.cond.i306.i.i.i.if.end.i317.i.i.i_crit_edge: ; preds = %while.cond.i306.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i317.i.i.i

lor.rhs.i309.i.i.i:                               ; preds = %while.cond.i306.i.i.i
  %val3.i307.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i303.i.i.i, i32 1
  %178 = ptrtoint ptr %val3.i307.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %val3.i307.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool5.not.i308.i.i.i = icmp eq i8 %179, 0
  br i1 %tobool5.not.i308.i.i.i, label %lor.rhs.i309.i.i.i.while.cond.i322.i.i.i_crit_edge, label %lor.rhs.i309.i.i.i.if.end.i317.i.i.i_crit_edge

lor.rhs.i309.i.i.i.if.end.i317.i.i.i_crit_edge:   ; preds = %lor.rhs.i309.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i317.i.i.i

lor.rhs.i309.i.i.i.while.cond.i322.i.i.i_crit_edge: ; preds = %lor.rhs.i309.i.i.i
  br label %while.cond.i322.i.i.i

if.then.i315.i.i.i:                               ; preds = %while.cond.i306.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i312.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i303.i.i.i, i32 1
  %180 = ptrtoint ptr %val13.i312.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %val13.i312.i.i.i, align 1
  %and.i313.i.i.i = and i8 %181, 15
  %or30.i314.i.i.i = or i8 %and.i313.i.i.i, 112
  store i8 %or30.i314.i.i.i, ptr %val13.i312.i.i.i, align 1
  br label %if.end.i317.i.i.i

if.end.i317.i.i.i:                                ; preds = %if.then.i315.i.i.i, %lor.rhs.i309.i.i.i.if.end.i317.i.i.i_crit_edge, %while.cond.i306.i.i.i.if.end.i317.i.i.i_crit_edge
  %inc.i316.i.i.i = add i32 %i.0.i303.i.i.i, 1
  br label %while.cond.i306.i.i.i

while.cond.i322.i.i.i:                            ; preds = %if.end.i333.i.i.i, %lor.rhs.i309.i.i.i.while.cond.i322.i.i.i_crit_edge
  %i.0.i319.i.i.i = phi i32 [ %inc.i332.i.i.i, %if.end.i333.i.i.i ], [ 0, %lor.rhs.i309.i.i.i.while.cond.i322.i.i.i_crit_edge ]
  %arrayidx.i320.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i319.i.i.i
  %182 = ptrtoint ptr %arrayidx.i320.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i320.i.i.i, align 1
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %183, label %while.cond.i322.i.i.i.if.end.i333.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i325.i.i.i
    i8 5, label %if.then.i331.i.i.i
  ]

while.cond.i322.i.i.i.if.end.i333.i.i.i_crit_edge: ; preds = %while.cond.i322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i333.i.i.i

lor.rhs.i325.i.i.i:                               ; preds = %while.cond.i322.i.i.i
  %val3.i323.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i319.i.i.i, i32 1
  %185 = ptrtoint ptr %val3.i323.i.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %val3.i323.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool5.not.i324.i.i.i = icmp eq i8 %186, 0
  br i1 %tobool5.not.i324.i.i.i, label %lor.rhs.i325.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i325.i.i.i.if.end.i333.i.i.i_crit_edge

lor.rhs.i325.i.i.i.if.end.i333.i.i.i_crit_edge:   ; preds = %lor.rhs.i325.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i333.i.i.i

lor.rhs.i325.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i325.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i331.i.i.i:                               ; preds = %while.cond.i322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i328.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i319.i.i.i, i32 1
  %187 = ptrtoint ptr %val13.i328.i.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %val13.i328.i.i.i, align 1
  %and.i329.i.i.i = and i8 %188, -16
  %or30.i330.i.i.i = or i8 %and.i329.i.i.i, 7
  store i8 %or30.i330.i.i.i, ptr %val13.i328.i.i.i, align 1
  br label %if.end.i333.i.i.i

if.end.i333.i.i.i:                                ; preds = %if.then.i331.i.i.i, %lor.rhs.i325.i.i.i.if.end.i333.i.i.i_crit_edge, %while.cond.i322.i.i.i.if.end.i333.i.i.i_crit_edge
  %inc.i332.i.i.i = add i32 %i.0.i319.i.i.i, 1
  br label %while.cond.i322.i.i.i

while.cond.i338.i.i.i:                            ; preds = %if.end.i349.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i338.i.i.i_crit_edge
  %i.0.i335.i.i.i = phi i32 [ %inc.i348.i.i.i, %if.end.i349.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i338.i.i.i_crit_edge ]
  %arrayidx.i336.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i335.i.i.i
  %189 = ptrtoint ptr %arrayidx.i336.i.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i336.i.i.i, align 1
  %191 = zext i8 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %190, label %while.cond.i338.i.i.i.if.end.i349.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i341.i.i.i
    i8 3, label %if.then.i347.i.i.i
  ]

while.cond.i338.i.i.i.if.end.i349.i.i.i_crit_edge: ; preds = %while.cond.i338.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i349.i.i.i

lor.rhs.i341.i.i.i:                               ; preds = %while.cond.i338.i.i.i
  %val3.i339.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i335.i.i.i, i32 1
  %192 = ptrtoint ptr %val3.i339.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %val3.i339.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool5.not.i340.i.i.i = icmp eq i8 %193, 0
  br i1 %tobool5.not.i340.i.i.i, label %lor.rhs.i341.i.i.i.while.cond.i354.i.i.i_crit_edge, label %lor.rhs.i341.i.i.i.if.end.i349.i.i.i_crit_edge

lor.rhs.i341.i.i.i.if.end.i349.i.i.i_crit_edge:   ; preds = %lor.rhs.i341.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i349.i.i.i

lor.rhs.i341.i.i.i.while.cond.i354.i.i.i_crit_edge: ; preds = %lor.rhs.i341.i.i.i
  br label %while.cond.i354.i.i.i

if.then.i347.i.i.i:                               ; preds = %while.cond.i338.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i344.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i335.i.i.i, i32 1
  %194 = ptrtoint ptr %val13.i344.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %val13.i344.i.i.i, align 1
  %and.i345.i.i.i = and i8 %195, 15
  %or30.i346.i.i.i = or i8 %and.i345.i.i.i, -128
  store i8 %or30.i346.i.i.i, ptr %val13.i344.i.i.i, align 1
  br label %if.end.i349.i.i.i

if.end.i349.i.i.i:                                ; preds = %if.then.i347.i.i.i, %lor.rhs.i341.i.i.i.if.end.i349.i.i.i_crit_edge, %while.cond.i338.i.i.i.if.end.i349.i.i.i_crit_edge
  %inc.i348.i.i.i = add i32 %i.0.i335.i.i.i, 1
  br label %while.cond.i338.i.i.i

while.cond.i354.i.i.i:                            ; preds = %if.end.i365.i.i.i, %lor.rhs.i341.i.i.i.while.cond.i354.i.i.i_crit_edge
  %i.0.i351.i.i.i = phi i32 [ %inc.i364.i.i.i, %if.end.i365.i.i.i ], [ 0, %lor.rhs.i341.i.i.i.while.cond.i354.i.i.i_crit_edge ]
  %arrayidx.i352.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i351.i.i.i
  %196 = ptrtoint ptr %arrayidx.i352.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i352.i.i.i, align 1
  %198 = zext i8 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %197, label %while.cond.i354.i.i.i.if.end.i365.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i357.i.i.i
    i8 5, label %if.then.i363.i.i.i
  ]

while.cond.i354.i.i.i.if.end.i365.i.i.i_crit_edge: ; preds = %while.cond.i354.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i365.i.i.i

lor.rhs.i357.i.i.i:                               ; preds = %while.cond.i354.i.i.i
  %val3.i355.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i351.i.i.i, i32 1
  %199 = ptrtoint ptr %val3.i355.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %val3.i355.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool5.not.i356.i.i.i = icmp eq i8 %200, 0
  br i1 %tobool5.not.i356.i.i.i, label %lor.rhs.i357.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i357.i.i.i.if.end.i365.i.i.i_crit_edge

lor.rhs.i357.i.i.i.if.end.i365.i.i.i_crit_edge:   ; preds = %lor.rhs.i357.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i365.i.i.i

lor.rhs.i357.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i357.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i363.i.i.i:                               ; preds = %while.cond.i354.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i360.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i351.i.i.i, i32 1
  %201 = ptrtoint ptr %val13.i360.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %val13.i360.i.i.i, align 1
  %and.i361.i.i.i = and i8 %202, -16
  %or30.i362.i.i.i = or i8 %and.i361.i.i.i, 8
  store i8 %or30.i362.i.i.i, ptr %val13.i360.i.i.i, align 1
  br label %if.end.i365.i.i.i

if.end.i365.i.i.i:                                ; preds = %if.then.i363.i.i.i, %lor.rhs.i357.i.i.i.if.end.i365.i.i.i_crit_edge, %while.cond.i354.i.i.i.if.end.i365.i.i.i_crit_edge
  %inc.i364.i.i.i = add i32 %i.0.i351.i.i.i, 1
  br label %while.cond.i354.i.i.i

while.cond.i370.i.i.i:                            ; preds = %if.end.i381.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i370.i.i.i_crit_edge
  %i.0.i367.i.i.i = phi i32 [ %inc.i380.i.i.i, %if.end.i381.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i370.i.i.i_crit_edge ]
  %arrayidx.i368.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i367.i.i.i
  %203 = ptrtoint ptr %arrayidx.i368.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i368.i.i.i, align 1
  %205 = zext i8 %204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %204, label %while.cond.i370.i.i.i.if.end.i381.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i373.i.i.i
    i8 3, label %if.then.i379.i.i.i
  ]

while.cond.i370.i.i.i.if.end.i381.i.i.i_crit_edge: ; preds = %while.cond.i370.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i381.i.i.i

lor.rhs.i373.i.i.i:                               ; preds = %while.cond.i370.i.i.i
  %val3.i371.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i367.i.i.i, i32 1
  %206 = ptrtoint ptr %val3.i371.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %val3.i371.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool5.not.i372.i.i.i = icmp eq i8 %207, 0
  br i1 %tobool5.not.i372.i.i.i, label %lor.rhs.i373.i.i.i.while.cond.i386.i.i.i_crit_edge, label %lor.rhs.i373.i.i.i.if.end.i381.i.i.i_crit_edge

lor.rhs.i373.i.i.i.if.end.i381.i.i.i_crit_edge:   ; preds = %lor.rhs.i373.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i381.i.i.i

lor.rhs.i373.i.i.i.while.cond.i386.i.i.i_crit_edge: ; preds = %lor.rhs.i373.i.i.i
  br label %while.cond.i386.i.i.i

if.then.i379.i.i.i:                               ; preds = %while.cond.i370.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i376.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i367.i.i.i, i32 1
  %208 = ptrtoint ptr %val13.i376.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %val13.i376.i.i.i, align 1
  %and.i377.i.i.i = and i8 %209, 15
  %or30.i378.i.i.i = or i8 %and.i377.i.i.i, -112
  store i8 %or30.i378.i.i.i, ptr %val13.i376.i.i.i, align 1
  br label %if.end.i381.i.i.i

if.end.i381.i.i.i:                                ; preds = %if.then.i379.i.i.i, %lor.rhs.i373.i.i.i.if.end.i381.i.i.i_crit_edge, %while.cond.i370.i.i.i.if.end.i381.i.i.i_crit_edge
  %inc.i380.i.i.i = add i32 %i.0.i367.i.i.i, 1
  br label %while.cond.i370.i.i.i

while.cond.i386.i.i.i:                            ; preds = %if.end.i397.i.i.i, %lor.rhs.i373.i.i.i.while.cond.i386.i.i.i_crit_edge
  %i.0.i383.i.i.i = phi i32 [ %inc.i396.i.i.i, %if.end.i397.i.i.i ], [ 0, %lor.rhs.i373.i.i.i.while.cond.i386.i.i.i_crit_edge ]
  %arrayidx.i384.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i383.i.i.i
  %210 = ptrtoint ptr %arrayidx.i384.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i384.i.i.i, align 1
  %212 = zext i8 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %211, label %while.cond.i386.i.i.i.if.end.i397.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i389.i.i.i
    i8 5, label %if.then.i395.i.i.i
  ]

while.cond.i386.i.i.i.if.end.i397.i.i.i_crit_edge: ; preds = %while.cond.i386.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i397.i.i.i

lor.rhs.i389.i.i.i:                               ; preds = %while.cond.i386.i.i.i
  %val3.i387.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i383.i.i.i, i32 1
  %213 = ptrtoint ptr %val3.i387.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val3.i387.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool5.not.i388.i.i.i = icmp eq i8 %214, 0
  br i1 %tobool5.not.i388.i.i.i, label %lor.rhs.i389.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i389.i.i.i.if.end.i397.i.i.i_crit_edge

lor.rhs.i389.i.i.i.if.end.i397.i.i.i_crit_edge:   ; preds = %lor.rhs.i389.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i397.i.i.i

lor.rhs.i389.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i389.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i395.i.i.i:                               ; preds = %while.cond.i386.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i392.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i383.i.i.i, i32 1
  %215 = ptrtoint ptr %val13.i392.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val13.i392.i.i.i, align 1
  %and.i393.i.i.i = and i8 %216, -16
  %or30.i394.i.i.i = or i8 %and.i393.i.i.i, 9
  store i8 %or30.i394.i.i.i, ptr %val13.i392.i.i.i, align 1
  br label %if.end.i397.i.i.i

if.end.i397.i.i.i:                                ; preds = %if.then.i395.i.i.i, %lor.rhs.i389.i.i.i.if.end.i397.i.i.i_crit_edge, %while.cond.i386.i.i.i.if.end.i397.i.i.i_crit_edge
  %inc.i396.i.i.i = add i32 %i.0.i383.i.i.i, 1
  br label %while.cond.i386.i.i.i

while.cond.i402.i.i.i:                            ; preds = %if.end.i413.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i402.i.i.i_crit_edge
  %i.0.i399.i.i.i = phi i32 [ %inc.i412.i.i.i, %if.end.i413.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i402.i.i.i_crit_edge ]
  %arrayidx.i400.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i399.i.i.i
  %217 = ptrtoint ptr %arrayidx.i400.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx.i400.i.i.i, align 1
  %219 = zext i8 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %218, label %while.cond.i402.i.i.i.if.end.i413.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i405.i.i.i
    i8 3, label %if.then.i411.i.i.i
  ]

while.cond.i402.i.i.i.if.end.i413.i.i.i_crit_edge: ; preds = %while.cond.i402.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i413.i.i.i

lor.rhs.i405.i.i.i:                               ; preds = %while.cond.i402.i.i.i
  %val3.i403.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i399.i.i.i, i32 1
  %220 = ptrtoint ptr %val3.i403.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %val3.i403.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool5.not.i404.i.i.i = icmp eq i8 %221, 0
  br i1 %tobool5.not.i404.i.i.i, label %lor.rhs.i405.i.i.i.while.cond.i418.i.i.i_crit_edge, label %lor.rhs.i405.i.i.i.if.end.i413.i.i.i_crit_edge

lor.rhs.i405.i.i.i.if.end.i413.i.i.i_crit_edge:   ; preds = %lor.rhs.i405.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i413.i.i.i

lor.rhs.i405.i.i.i.while.cond.i418.i.i.i_crit_edge: ; preds = %lor.rhs.i405.i.i.i
  br label %while.cond.i418.i.i.i

if.then.i411.i.i.i:                               ; preds = %while.cond.i402.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i408.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i399.i.i.i, i32 1
  %222 = ptrtoint ptr %val13.i408.i.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %val13.i408.i.i.i, align 1
  %and.i409.i.i.i = and i8 %223, 15
  %or30.i410.i.i.i = or i8 %and.i409.i.i.i, -96
  store i8 %or30.i410.i.i.i, ptr %val13.i408.i.i.i, align 1
  br label %if.end.i413.i.i.i

if.end.i413.i.i.i:                                ; preds = %if.then.i411.i.i.i, %lor.rhs.i405.i.i.i.if.end.i413.i.i.i_crit_edge, %while.cond.i402.i.i.i.if.end.i413.i.i.i_crit_edge
  %inc.i412.i.i.i = add i32 %i.0.i399.i.i.i, 1
  br label %while.cond.i402.i.i.i

while.cond.i418.i.i.i:                            ; preds = %if.end.i429.i.i.i, %lor.rhs.i405.i.i.i.while.cond.i418.i.i.i_crit_edge
  %i.0.i415.i.i.i = phi i32 [ %inc.i428.i.i.i, %if.end.i429.i.i.i ], [ 0, %lor.rhs.i405.i.i.i.while.cond.i418.i.i.i_crit_edge ]
  %arrayidx.i416.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i415.i.i.i
  %224 = ptrtoint ptr %arrayidx.i416.i.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i416.i.i.i, align 1
  %226 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %225, label %while.cond.i418.i.i.i.if.end.i429.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i421.i.i.i
    i8 5, label %if.then.i427.i.i.i
  ]

while.cond.i418.i.i.i.if.end.i429.i.i.i_crit_edge: ; preds = %while.cond.i418.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i429.i.i.i

lor.rhs.i421.i.i.i:                               ; preds = %while.cond.i418.i.i.i
  %val3.i419.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i415.i.i.i, i32 1
  %227 = ptrtoint ptr %val3.i419.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %val3.i419.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool5.not.i420.i.i.i = icmp eq i8 %228, 0
  br i1 %tobool5.not.i420.i.i.i, label %lor.rhs.i421.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i421.i.i.i.if.end.i429.i.i.i_crit_edge

lor.rhs.i421.i.i.i.if.end.i429.i.i.i_crit_edge:   ; preds = %lor.rhs.i421.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i429.i.i.i

lor.rhs.i421.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i421.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i427.i.i.i:                               ; preds = %while.cond.i418.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i424.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i415.i.i.i, i32 1
  %229 = ptrtoint ptr %val13.i424.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %val13.i424.i.i.i, align 1
  %and.i425.i.i.i = and i8 %230, -16
  %or30.i426.i.i.i = or i8 %and.i425.i.i.i, 10
  store i8 %or30.i426.i.i.i, ptr %val13.i424.i.i.i, align 1
  br label %if.end.i429.i.i.i

if.end.i429.i.i.i:                                ; preds = %if.then.i427.i.i.i, %lor.rhs.i421.i.i.i.if.end.i429.i.i.i_crit_edge, %while.cond.i418.i.i.i.if.end.i429.i.i.i_crit_edge
  %inc.i428.i.i.i = add i32 %i.0.i415.i.i.i, 1
  br label %while.cond.i418.i.i.i

while.cond.i434.i.i.i:                            ; preds = %if.end.i445.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i434.i.i.i_crit_edge
  %i.0.i431.i.i.i = phi i32 [ %inc.i444.i.i.i, %if.end.i445.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i434.i.i.i_crit_edge ]
  %arrayidx.i432.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i431.i.i.i
  %231 = ptrtoint ptr %arrayidx.i432.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i432.i.i.i, align 1
  %233 = zext i8 %232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %232, label %while.cond.i434.i.i.i.if.end.i445.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i437.i.i.i
    i8 3, label %if.then.i443.i.i.i
  ]

while.cond.i434.i.i.i.if.end.i445.i.i.i_crit_edge: ; preds = %while.cond.i434.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i445.i.i.i

lor.rhs.i437.i.i.i:                               ; preds = %while.cond.i434.i.i.i
  %val3.i435.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i431.i.i.i, i32 1
  %234 = ptrtoint ptr %val3.i435.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val3.i435.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool5.not.i436.i.i.i = icmp eq i8 %235, 0
  br i1 %tobool5.not.i436.i.i.i, label %lor.rhs.i437.i.i.i.while.cond.i450.i.i.i_crit_edge, label %lor.rhs.i437.i.i.i.if.end.i445.i.i.i_crit_edge

lor.rhs.i437.i.i.i.if.end.i445.i.i.i_crit_edge:   ; preds = %lor.rhs.i437.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i445.i.i.i

lor.rhs.i437.i.i.i.while.cond.i450.i.i.i_crit_edge: ; preds = %lor.rhs.i437.i.i.i
  br label %while.cond.i450.i.i.i

if.then.i443.i.i.i:                               ; preds = %while.cond.i434.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i440.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i431.i.i.i, i32 1
  %236 = ptrtoint ptr %val13.i440.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %val13.i440.i.i.i, align 1
  %and.i441.i.i.i = and i8 %237, 15
  %or30.i442.i.i.i = or i8 %and.i441.i.i.i, -80
  store i8 %or30.i442.i.i.i, ptr %val13.i440.i.i.i, align 1
  br label %if.end.i445.i.i.i

if.end.i445.i.i.i:                                ; preds = %if.then.i443.i.i.i, %lor.rhs.i437.i.i.i.if.end.i445.i.i.i_crit_edge, %while.cond.i434.i.i.i.if.end.i445.i.i.i_crit_edge
  %inc.i444.i.i.i = add i32 %i.0.i431.i.i.i, 1
  br label %while.cond.i434.i.i.i

while.cond.i450.i.i.i:                            ; preds = %if.end.i461.i.i.i, %lor.rhs.i437.i.i.i.while.cond.i450.i.i.i_crit_edge
  %i.0.i447.i.i.i = phi i32 [ %inc.i460.i.i.i, %if.end.i461.i.i.i ], [ 0, %lor.rhs.i437.i.i.i.while.cond.i450.i.i.i_crit_edge ]
  %arrayidx.i448.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i447.i.i.i
  %238 = ptrtoint ptr %arrayidx.i448.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx.i448.i.i.i, align 1
  %240 = zext i8 %239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %239, label %while.cond.i450.i.i.i.if.end.i461.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i453.i.i.i
    i8 5, label %if.then.i459.i.i.i
  ]

while.cond.i450.i.i.i.if.end.i461.i.i.i_crit_edge: ; preds = %while.cond.i450.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i461.i.i.i

lor.rhs.i453.i.i.i:                               ; preds = %while.cond.i450.i.i.i
  %val3.i451.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i447.i.i.i, i32 1
  %241 = ptrtoint ptr %val3.i451.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %val3.i451.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool5.not.i452.i.i.i = icmp eq i8 %242, 0
  br i1 %tobool5.not.i452.i.i.i, label %lor.rhs.i453.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i453.i.i.i.if.end.i461.i.i.i_crit_edge

lor.rhs.i453.i.i.i.if.end.i461.i.i.i_crit_edge:   ; preds = %lor.rhs.i453.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i461.i.i.i

lor.rhs.i453.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i453.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i459.i.i.i:                               ; preds = %while.cond.i450.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i456.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i447.i.i.i, i32 1
  %243 = ptrtoint ptr %val13.i456.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %val13.i456.i.i.i, align 1
  %and.i457.i.i.i = and i8 %244, -16
  %or30.i458.i.i.i = or i8 %and.i457.i.i.i, 11
  store i8 %or30.i458.i.i.i, ptr %val13.i456.i.i.i, align 1
  br label %if.end.i461.i.i.i

if.end.i461.i.i.i:                                ; preds = %if.then.i459.i.i.i, %lor.rhs.i453.i.i.i.if.end.i461.i.i.i_crit_edge, %while.cond.i450.i.i.i.if.end.i461.i.i.i_crit_edge
  %inc.i460.i.i.i = add i32 %i.0.i447.i.i.i, 1
  br label %while.cond.i450.i.i.i

while.cond.i466.i.i.i:                            ; preds = %if.end.i477.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i466.i.i.i_crit_edge
  %i.0.i463.i.i.i = phi i32 [ %inc.i476.i.i.i, %if.end.i477.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i466.i.i.i_crit_edge ]
  %arrayidx.i464.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i463.i.i.i
  %245 = ptrtoint ptr %arrayidx.i464.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx.i464.i.i.i, align 1
  %247 = zext i8 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %246, label %while.cond.i466.i.i.i.if.end.i477.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i469.i.i.i
    i8 3, label %if.then.i475.i.i.i
  ]

while.cond.i466.i.i.i.if.end.i477.i.i.i_crit_edge: ; preds = %while.cond.i466.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i477.i.i.i

lor.rhs.i469.i.i.i:                               ; preds = %while.cond.i466.i.i.i
  %val3.i467.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i463.i.i.i, i32 1
  %248 = ptrtoint ptr %val3.i467.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %val3.i467.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool5.not.i468.i.i.i = icmp eq i8 %249, 0
  br i1 %tobool5.not.i468.i.i.i, label %lor.rhs.i469.i.i.i.while.cond.i482.i.i.i_crit_edge, label %lor.rhs.i469.i.i.i.if.end.i477.i.i.i_crit_edge

lor.rhs.i469.i.i.i.if.end.i477.i.i.i_crit_edge:   ; preds = %lor.rhs.i469.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i477.i.i.i

lor.rhs.i469.i.i.i.while.cond.i482.i.i.i_crit_edge: ; preds = %lor.rhs.i469.i.i.i
  br label %while.cond.i482.i.i.i

if.then.i475.i.i.i:                               ; preds = %while.cond.i466.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i472.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i463.i.i.i, i32 1
  %250 = ptrtoint ptr %val13.i472.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %val13.i472.i.i.i, align 1
  %and.i473.i.i.i = and i8 %251, 15
  %or30.i474.i.i.i = or i8 %and.i473.i.i.i, -64
  store i8 %or30.i474.i.i.i, ptr %val13.i472.i.i.i, align 1
  br label %if.end.i477.i.i.i

if.end.i477.i.i.i:                                ; preds = %if.then.i475.i.i.i, %lor.rhs.i469.i.i.i.if.end.i477.i.i.i_crit_edge, %while.cond.i466.i.i.i.if.end.i477.i.i.i_crit_edge
  %inc.i476.i.i.i = add i32 %i.0.i463.i.i.i, 1
  br label %while.cond.i466.i.i.i

while.cond.i482.i.i.i:                            ; preds = %if.end.i493.i.i.i, %lor.rhs.i469.i.i.i.while.cond.i482.i.i.i_crit_edge
  %i.0.i479.i.i.i = phi i32 [ %inc.i492.i.i.i, %if.end.i493.i.i.i ], [ 0, %lor.rhs.i469.i.i.i.while.cond.i482.i.i.i_crit_edge ]
  %arrayidx.i480.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i479.i.i.i
  %252 = ptrtoint ptr %arrayidx.i480.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx.i480.i.i.i, align 1
  %254 = zext i8 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %253, label %while.cond.i482.i.i.i.if.end.i493.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i485.i.i.i
    i8 5, label %if.then.i491.i.i.i
  ]

while.cond.i482.i.i.i.if.end.i493.i.i.i_crit_edge: ; preds = %while.cond.i482.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i493.i.i.i

lor.rhs.i485.i.i.i:                               ; preds = %while.cond.i482.i.i.i
  %val3.i483.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i479.i.i.i, i32 1
  %255 = ptrtoint ptr %val3.i483.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %val3.i483.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool5.not.i484.i.i.i = icmp eq i8 %256, 0
  br i1 %tobool5.not.i484.i.i.i, label %lor.rhs.i485.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i485.i.i.i.if.end.i493.i.i.i_crit_edge

lor.rhs.i485.i.i.i.if.end.i493.i.i.i_crit_edge:   ; preds = %lor.rhs.i485.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i493.i.i.i

lor.rhs.i485.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i485.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i491.i.i.i:                               ; preds = %while.cond.i482.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i488.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i479.i.i.i, i32 1
  %257 = ptrtoint ptr %val13.i488.i.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %val13.i488.i.i.i, align 1
  %and.i489.i.i.i = and i8 %258, -16
  %or30.i490.i.i.i = or i8 %and.i489.i.i.i, 12
  store i8 %or30.i490.i.i.i, ptr %val13.i488.i.i.i, align 1
  br label %if.end.i493.i.i.i

if.end.i493.i.i.i:                                ; preds = %if.then.i491.i.i.i, %lor.rhs.i485.i.i.i.if.end.i493.i.i.i_crit_edge, %while.cond.i482.i.i.i.if.end.i493.i.i.i_crit_edge
  %inc.i492.i.i.i = add i32 %i.0.i479.i.i.i, 1
  br label %while.cond.i482.i.i.i

while.cond.i498.i.i.i:                            ; preds = %if.end.i509.i.i.i, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i498.i.i.i_crit_edge
  %i.0.i495.i.i.i = phi i32 [ %inc.i508.i.i.i, %if.end.i509.i.i.i ], [ 0, %mxl5007t_set_if_freq_bits.exit.i.i.while.cond.i498.i.i.i_crit_edge ]
  %arrayidx.i496.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i495.i.i.i
  %259 = ptrtoint ptr %arrayidx.i496.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i496.i.i.i, align 1
  %261 = zext i8 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %260, label %while.cond.i498.i.i.i.if.end.i509.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i501.i.i.i
    i8 3, label %if.then.i507.i.i.i
  ]

while.cond.i498.i.i.i.if.end.i509.i.i.i_crit_edge: ; preds = %while.cond.i498.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i509.i.i.i

lor.rhs.i501.i.i.i:                               ; preds = %while.cond.i498.i.i.i
  %val3.i499.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i495.i.i.i, i32 1
  %262 = ptrtoint ptr %val3.i499.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %val3.i499.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool5.not.i500.i.i.i = icmp eq i8 %263, 0
  br i1 %tobool5.not.i500.i.i.i, label %lor.rhs.i501.i.i.i.while.cond.i514.i.i.i_crit_edge, label %lor.rhs.i501.i.i.i.if.end.i509.i.i.i_crit_edge

lor.rhs.i501.i.i.i.if.end.i509.i.i.i_crit_edge:   ; preds = %lor.rhs.i501.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i509.i.i.i

lor.rhs.i501.i.i.i.while.cond.i514.i.i.i_crit_edge: ; preds = %lor.rhs.i501.i.i.i
  br label %while.cond.i514.i.i.i

if.then.i507.i.i.i:                               ; preds = %while.cond.i498.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i504.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i495.i.i.i, i32 1
  %264 = ptrtoint ptr %val13.i504.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %val13.i504.i.i.i, align 1
  %and.i505.i.i.i = and i8 %265, 15
  %or30.i506.i.i.i = or i8 %and.i505.i.i.i, -48
  store i8 %or30.i506.i.i.i, ptr %val13.i504.i.i.i, align 1
  br label %if.end.i509.i.i.i

if.end.i509.i.i.i:                                ; preds = %if.then.i507.i.i.i, %lor.rhs.i501.i.i.i.if.end.i509.i.i.i_crit_edge, %while.cond.i498.i.i.i.if.end.i509.i.i.i_crit_edge
  %inc.i508.i.i.i = add i32 %i.0.i495.i.i.i, 1
  br label %while.cond.i498.i.i.i

while.cond.i514.i.i.i:                            ; preds = %if.end.i525.i.i.i, %lor.rhs.i501.i.i.i.while.cond.i514.i.i.i_crit_edge
  %i.0.i511.i.i.i = phi i32 [ %inc.i524.i.i.i, %if.end.i525.i.i.i ], [ 0, %lor.rhs.i501.i.i.i.while.cond.i514.i.i.i_crit_edge ]
  %arrayidx.i512.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i511.i.i.i
  %266 = ptrtoint ptr %arrayidx.i512.i.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx.i512.i.i.i, align 1
  %268 = zext i8 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %267, label %while.cond.i514.i.i.i.if.end.i525.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i517.i.i.i
    i8 5, label %if.then.i523.i.i.i
  ]

while.cond.i514.i.i.i.if.end.i525.i.i.i_crit_edge: ; preds = %while.cond.i514.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i525.i.i.i

lor.rhs.i517.i.i.i:                               ; preds = %while.cond.i514.i.i.i
  %val3.i515.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i511.i.i.i, i32 1
  %269 = ptrtoint ptr %val3.i515.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %val3.i515.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool5.not.i516.i.i.i = icmp eq i8 %270, 0
  br i1 %tobool5.not.i516.i.i.i, label %lor.rhs.i517.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, label %lor.rhs.i517.i.i.i.if.end.i525.i.i.i_crit_edge

lor.rhs.i517.i.i.i.if.end.i525.i.i.i_crit_edge:   ; preds = %lor.rhs.i517.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i525.i.i.i

lor.rhs.i517.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge: ; preds = %lor.rhs.i517.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

if.then.i523.i.i.i:                               ; preds = %while.cond.i514.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i520.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i511.i.i.i, i32 1
  %271 = ptrtoint ptr %val13.i520.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %val13.i520.i.i.i, align 1
  %and.i521.i.i.i = and i8 %272, -16
  %or30.i522.i.i.i = or i8 %and.i521.i.i.i, 13
  store i8 %or30.i522.i.i.i, ptr %val13.i520.i.i.i, align 1
  br label %if.end.i525.i.i.i

if.end.i525.i.i.i:                                ; preds = %if.then.i523.i.i.i, %lor.rhs.i517.i.i.i.if.end.i525.i.i.i_crit_edge, %while.cond.i514.i.i.i.if.end.i525.i.i.i_crit_edge
  %inc.i524.i.i.i = add i32 %i.0.i511.i.i.i, 1
  br label %while.cond.i514.i.i.i

do.end.i81.i.i:                                   ; preds = %mxl5007t_set_if_freq_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.54, i32 noundef -22, i32 noundef 338) #9
  br label %mxl5007t_set_xtal_freq_bits.exit.i.i

mxl5007t_set_xtal_freq_bits.exit.i.i:             ; preds = %do.end.i81.i.i, %lor.rhs.i517.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i485.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i453.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i421.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i389.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i357.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i325.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i293.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i261.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i229.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i197.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i165.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i133.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge, %lor.rhs.i103.i.i.i.mxl5007t_set_xtal_freq_bits.exit.i.i_crit_edge
  %273 = ptrtoint ptr %invert_if.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %bf.load2.i.i = load i8, ptr %invert_if.i.i, align 4
  %274 = lshr i8 %bf.load2.i.i, 2
  %275 = and i8 %274, 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %mxl5007t_set_xtal_freq_bits.exit.i.i
  %i.0.i.i.i = phi i32 [ 0, %mxl5007t_set_xtal_freq_bits.exit.i.i ], [ %inc.i.i.i, %if.end.i.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i
  %276 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx.i.i.i, align 1
  %278 = zext i8 %277 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %277, label %while.cond.i.i.i.if.end.i.i.i_crit_edge [
    i8 0, label %lor.rhs.i.i.i
    i8 3, label %if.then.i.i.i
  ]

while.cond.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %while.cond.i.i.i
  %val3.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i, i32 1
  %279 = ptrtoint ptr %val3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %val3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool5.not.i.i.i = icmp eq i8 %280, 0
  br i1 %tobool5.not.i.i.i, label %set_reg_bits.exit.i.i, label %lor.rhs.i.i.i.if.end.i.i.i_crit_edge

lor.rhs.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i.i.i, i32 1
  %281 = ptrtoint ptr %val13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %val13.i.i.i, align 1
  %and.i.i.i = and i8 %282, -9
  %or30.i.i.i = or i8 %and.i.i.i, %275
  store i8 %or30.i.i.i, ptr %val13.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %lor.rhs.i.i.i.if.end.i.i.i_crit_edge, %while.cond.i.i.i.if.end.i.i.i_crit_edge
  %inc.i.i.i = add i32 %i.0.i.i.i, 1
  br label %while.cond.i.i.i

set_reg_bits.exit.i.i:                            ; preds = %lor.rhs.i.i.i
  %clk_out_amp.i.i = getelementptr inbounds %struct.mxl5007t_config, ptr %13, i32 0, i32 1
  %283 = ptrtoint ptr %clk_out_amp.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %clk_out_amp.i.i, align 4
  %conv7.i.i = trunc i32 %284 to i8
  br label %while.cond.i86.i.i

while.cond.i86.i.i:                               ; preds = %if.end.i97.i.i, %set_reg_bits.exit.i.i
  %i.0.i83.i.i = phi i32 [ 0, %set_reg_bits.exit.i.i ], [ %inc.i96.i.i, %if.end.i97.i.i ]
  %arrayidx.i84.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i83.i.i
  %285 = ptrtoint ptr %arrayidx.i84.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx.i84.i.i, align 1
  %287 = zext i8 %286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %287, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %286, label %while.cond.i86.i.i.if.end.i97.i.i_crit_edge [
    i8 0, label %lor.rhs.i89.i.i
    i8 3, label %if.then.i95.i.i
  ]

while.cond.i86.i.i.if.end.i97.i.i_crit_edge:      ; preds = %while.cond.i86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i97.i.i

lor.rhs.i89.i.i:                                  ; preds = %while.cond.i86.i.i
  %val3.i87.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i83.i.i, i32 1
  %288 = ptrtoint ptr %val3.i87.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %val3.i87.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool5.not.i88.i.i = icmp eq i8 %289, 0
  br i1 %tobool5.not.i88.i.i, label %set_reg_bits.exit98.i.i, label %lor.rhs.i89.i.i.if.end.i97.i.i_crit_edge

lor.rhs.i89.i.i.if.end.i97.i.i_crit_edge:         ; preds = %lor.rhs.i89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i97.i.i

if.then.i95.i.i:                                  ; preds = %while.cond.i86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i92.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i83.i.i, i32 1
  %290 = ptrtoint ptr %val13.i92.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %val13.i92.i.i, align 1
  %and.i93.i.i = and i8 %291, -8
  %or30.i94.i.i = or i8 %and.i93.i.i, %conv7.i.i
  store i8 %or30.i94.i.i, ptr %val13.i92.i.i, align 1
  br label %if.end.i97.i.i

if.end.i97.i.i:                                   ; preds = %if.then.i95.i.i, %lor.rhs.i89.i.i.if.end.i97.i.i_crit_edge, %while.cond.i86.i.i.if.end.i97.i.i_crit_edge
  %inc.i96.i.i = add i32 %i.0.i83.i.i, 1
  br label %while.cond.i86.i.i

set_reg_bits.exit98.i.i:                          ; preds = %lor.rhs.i89.i.i
  br i1 %cmp.i.i, label %set_reg_bits.exit98.i.i.while.cond.i102.i.i_crit_edge, label %set_reg_bits.exit98.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge

set_reg_bits.exit98.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge: ; preds = %set_reg_bits.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_calc_init_regs.exit.i

set_reg_bits.exit98.i.i.while.cond.i102.i.i_crit_edge: ; preds = %set_reg_bits.exit98.i.i
  br label %while.cond.i102.i.i

while.cond.i102.i.i:                              ; preds = %while.end.i.i.i, %set_reg_bits.exit98.i.i.while.cond.i102.i.i_crit_edge
  %i.0.i99.i.i = phi i32 [ %inc27.i.i.i, %while.end.i.i.i ], [ 0, %set_reg_bits.exit98.i.i.while.cond.i102.i.i_crit_edge ]
  %j.0.i.i.i = phi i32 [ %j.1.i.i.i, %while.end.i.i.i ], [ 0, %set_reg_bits.exit98.i.i.while.cond.i102.i.i_crit_edge ]
  %arrayidx.i100.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i99.i.i
  %292 = ptrtoint ptr %arrayidx.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx.i100.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool.not.i101.i.i = icmp eq i8 %293, 0
  br i1 %tobool.not.i101.i.i, label %lor.rhs.i103.i.i, label %while.cond.i102.i.i.while.cond4.i.i.i.preheader_crit_edge

while.cond.i102.i.i.while.cond4.i.i.i.preheader_crit_edge: ; preds = %while.cond.i102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond4.i.i.i.preheader

lor.rhs.i103.i.i:                                 ; preds = %while.cond.i102.i.i
  %val.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i99.i.i, i32 1
  %294 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %val.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool3.not.i.i.i = icmp eq i8 %295, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i103.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge, label %lor.rhs.i103.i.i.while.cond4.i.i.i.preheader_crit_edge

lor.rhs.i103.i.i.while.cond4.i.i.i.preheader_crit_edge: ; preds = %lor.rhs.i103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond4.i.i.i.preheader

lor.rhs.i103.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge: ; preds = %lor.rhs.i103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_calc_init_regs.exit.i

while.cond4.i.i.i.preheader:                      ; preds = %lor.rhs.i103.i.i.while.cond4.i.i.i.preheader_crit_edge, %while.cond.i102.i.i.while.cond4.i.i.i.preheader_crit_edge
  br label %while.cond4.i.i.i

while.cond4.i.i.i:                                ; preds = %if.then.i106.i.i, %while.cond4.i.i.i.preheader
  %j.1.i.i.i = phi i32 [ %inc.i105.i.i, %if.then.i106.i.i ], [ %j.0.i.i.i, %while.cond4.i.i.i.preheader ]
  %arrayidx5.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %j.1.i.i.i
  %296 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx5.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool8.not.i.i.i = icmp eq i8 %297, 0
  br i1 %tobool8.not.i.i.i, label %lor.rhs9.i.i.i, label %while.cond4.i.i.i.while.body15.i.i.i_crit_edge

while.cond4.i.i.i.while.body15.i.i.i_crit_edge:   ; preds = %while.cond4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body15.i.i.i

lor.rhs9.i.i.i:                                   ; preds = %while.cond4.i.i.i
  %val11.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %j.1.i.i.i, i32 1
  %298 = ptrtoint ptr %val11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %val11.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool13.not.i.i.i = icmp eq i8 %299, 0
  br i1 %tobool13.not.i.i.i, label %lor.rhs9.i.i.i.while.end.i.i.i_crit_edge, label %lor.rhs9.i.i.i.while.body15.i.i.i_crit_edge

lor.rhs9.i.i.i.while.body15.i.i.i_crit_edge:      ; preds = %lor.rhs9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body15.i.i.i

lor.rhs9.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %lor.rhs9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i.i

while.body15.i.i.i:                               ; preds = %lor.rhs9.i.i.i.while.body15.i.i.i_crit_edge, %while.cond4.i.i.i.while.body15.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq i8 %293, %297
  br i1 %cmp.not.i.i.i, label %if.end.i107.i.i, label %if.then.i106.i.i

if.then.i106.i.i:                                 ; preds = %while.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i105.i.i = add i32 %j.1.i.i.i, 1
  br label %while.cond4.i.i.i

if.end.i107.i.i:                                  ; preds = %while.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val24.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init.i.i, i32 %i.0.i99.i.i, i32 1
  %300 = ptrtoint ptr %val24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %val24.i.i.i, align 1
  %val26.i.i.i = getelementptr %struct.reg_pair_t, ptr %tab_init_cable.i.i, i32 %j.1.i.i.i, i32 1
  %302 = ptrtoint ptr %val26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %val26.i.i.i, align 1
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i107.i.i, %lor.rhs9.i.i.i.while.end.i.i.i_crit_edge
  %inc27.i.i.i = add i32 %i.0.i99.i.i, 1
  br label %while.cond.i102.i.i

mxl5007t_calc_init_regs.exit.i:                   ; preds = %lor.rhs.i103.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge, %set_reg_bits.exit98.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %tab_init.i.i, %set_reg_bits.exit98.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge ], [ %tab_init_cable.i.i, %lor.rhs.i103.i.i.mxl5007t_calc_init_regs.exit.i_crit_edge ]
  %303 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %304 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %i2c_props.i.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf2.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %adap.i.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1, i32 1
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %mxl5007t_write_reg.exit.i.i, %mxl5007t_calc_init_regs.exit.i
  %i.016.i.i = phi i32 [ 0, %mxl5007t_calc_init_regs.exit.i ], [ %inc.i.i, %mxl5007t_write_reg.exit.i.i ]
  %arrayidx.i.i = getelementptr %struct.reg_pair_t, ptr %retval.0.i.i, i32 %i.016.i.i
  %305 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool.not.i.i = icmp eq i8 %306, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %land.rhs.i.i.while.body.i.i_crit_edge

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %val.i.i = getelementptr %struct.reg_pair_t, ptr %retval.0.i.i, i32 %i.016.i.i, i32 1
  %307 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %val.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool3.not.i.i = icmp eq i8 %308, 0
  br i1 %tobool3.not.i.i, label %if.end23.critedge, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %land.rhs.i.i.while.body.i.i_crit_edge
  %val7.i.i = getelementptr %struct.reg_pair_t, ptr %retval.0.i.i, i32 %i.016.i.i, i32 1
  %309 = ptrtoint ptr %val7.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %val7.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %311 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %306, ptr %buf.i.i.i, align 1
  %312 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %310, ptr %303, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %313 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 196607, ptr %304, align 4
  %314 = ptrtoint ptr %i2c_props.i.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %i2c_props.i.i.i, align 4
  %conv.i.i11.i = zext i8 %315 to i16
  %316 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv.i.i11.i, ptr %msg.i.i.i, align 4
  %317 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %flags.i.i.i, align 2
  %318 = ptrtoint ptr %buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %buf.i.i.i, ptr %buf2.i.i.i, align 4
  %319 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i12.i = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  %cmp.not.i.i13.i = icmp eq i32 %call.i.i12.i, 1
  br i1 %cmp.not.i.i13.i, label %mxl5007t_write_reg.exit.i.i, label %do.end16

mxl5007t_write_reg.exit.i.i:                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %inc.i.i = add i32 %i.016.i.i, 1
  br label %land.rhs.i.i

do.end16:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.51, i32 noundef -121, i32 noundef 513) #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, i32 noundef -121, i32 noundef 637) #9
  br label %fail

if.end23.critedge:                                ; preds = %lor.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %321(i32 noundef 214748000) #6
  %tab_rftune.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 7
  %322 = call ptr @memcpy(ptr %tab_rftune.i.i, ptr @reg_pair_rftune, i32 22)
  br label %while.cond.i.i.i.i90

while.cond.i.i.i.i90:                             ; preds = %if.end.i.i.i.i99, %if.end23.critedge
  %i.0.i.i.i.i88 = phi i32 [ 0, %if.end23.critedge ], [ %inc.i.i.i.i98, %if.end.i.i.i.i99 ]
  %arrayidx.i.i.i.i89 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i.i88
  %323 = ptrtoint ptr %arrayidx.i.i.i.i89 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx.i.i.i.i89, align 1
  %325 = zext i8 %324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %325, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %324, label %while.cond.i.i.i.i90.if.end.i.i.i.i99_crit_edge [
    i8 0, label %lor.rhs.i.i.i.i93
    i8 12, label %if.then.i.i.i.i97
  ]

while.cond.i.i.i.i90.if.end.i.i.i.i99_crit_edge:  ; preds = %while.cond.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i99

lor.rhs.i.i.i.i93:                                ; preds = %while.cond.i.i.i.i90
  %val3.i.i.i.i91 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i.i88, i32 1
  %326 = ptrtoint ptr %val3.i.i.i.i91 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %val3.i.i.i.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool5.not.i.i.i.i92 = icmp eq i8 %327, 0
  br i1 %tobool5.not.i.i.i.i92, label %mxl5007t_set_bw_bits.exit.i.i, label %lor.rhs.i.i.i.i93.if.end.i.i.i.i99_crit_edge

lor.rhs.i.i.i.i93.if.end.i.i.i.i99_crit_edge:     ; preds = %lor.rhs.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i99

if.then.i.i.i.i97:                                ; preds = %while.cond.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i.i.i94 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i.i88, i32 1
  %328 = ptrtoint ptr %val13.i.i.i.i94 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %val13.i.i.i.i94, align 1
  %and.i.i.i.i95 = and i8 %329, -64
  %or30.i.i.i.i96 = or i8 %and.i.i.i.i95, %bw.0
  store i8 %or30.i.i.i.i96, ptr %val13.i.i.i.i94, align 1
  br label %if.end.i.i.i.i99

if.end.i.i.i.i99:                                 ; preds = %if.then.i.i.i.i97, %lor.rhs.i.i.i.i93.if.end.i.i.i.i99_crit_edge, %while.cond.i.i.i.i90.if.end.i.i.i.i99_crit_edge
  %inc.i.i.i.i98 = add i32 %i.0.i.i.i.i88, 1
  br label %while.cond.i.i.i.i90

mxl5007t_set_bw_bits.exit.i.i:                    ; preds = %lor.rhs.i.i.i.i93
  %.frozen = freeze i32 %5
  %div.i.i = udiv i32 %.frozen, 1000000
  %330 = mul i32 %div.i.i, 1000000
  %rem.i.i.decomposed = sub i32 %.frozen, %330
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %rem.i.i.decomposed)
  %cmp2.i.i = icmp ugt i32 %rem.i.i.decomposed, 500000
  %sub.neg.i.i = select i1 %cmp2.i.i, i32 -500000, i32 0
  %temp.1.i.i = add nsw i32 %sub.neg.i.i, %rem.i.i.decomposed
  %331 = shl nuw nsw i32 %div.i.i, 2
  %332 = select i1 %cmp2.i.i, i32 2, i32 0
  %shl.1.i.i = or i32 %332, %331
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %temp.1.i.i)
  %cmp2.1.i.i = icmp ugt i32 %temp.1.i.i, 250000
  %inc.1.i.i = zext i1 %cmp2.1.i.i to i32
  %dig_rf_freq.1.1.i.i = or i32 %shl.1.i.i, %inc.1.i.i
  %sub.1.neg.i.i = select i1 %cmp2.1.i.i, i32 -250000, i32 0
  %temp.1.1.i.i = add nsw i32 %sub.1.neg.i.i, %temp.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %temp.1.1.i.i)
  %cmp2.2.i.i = icmp ugt i32 %temp.1.1.i.i, 125000
  %sub.2.neg.i.i = select i1 %cmp2.2.i.i, i32 -125000, i32 0
  %temp.1.2.i.i = add nsw i32 %sub.2.neg.i.i, %temp.1.1.i.i
  %333 = shl nuw nsw i32 %dig_rf_freq.1.1.i.i, 2
  %334 = select i1 %cmp2.2.i.i, i32 2, i32 0
  %shl.3.i.i = or i32 %334, %333
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %temp.1.2.i.i)
  %cmp2.3.i.i = icmp ugt i32 %temp.1.2.i.i, 62500
  %inc.3.i.i = zext i1 %cmp2.3.i.i to i32
  %dig_rf_freq.1.3.i.i = or i32 %shl.3.i.i, %inc.3.i.i
  %sub.3.neg.i.i = select i1 %cmp2.3.i.i, i32 -62500, i32 0
  %temp.1.3.i.i = add nsw i32 %sub.3.neg.i.i, %temp.1.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31250, i32 %temp.1.3.i.i)
  %cmp2.4.i.i = icmp ugt i32 %temp.1.3.i.i, 31250
  %sub.4.neg.i.i = select i1 %cmp2.4.i.i, i32 -31250, i32 0
  %temp.1.4.i.i = add nsw i32 %sub.4.neg.i.i, %temp.1.3.i.i
  %335 = shl i32 %dig_rf_freq.1.3.i.i, 2
  %336 = select i1 %cmp2.4.i.i, i32 2, i32 0
  %shl.5.i.i = or i32 %336, %335
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %temp.1.4.i.i)
  %cmp2.5.i.i = icmp ugt i32 %temp.1.4.i.i, 15625
  %inc.5.i.i = zext i1 %cmp2.5.i.i to i32
  %dig_rf_freq.1.5.i.i = or i32 %shl.5.i.i, %inc.5.i.i
  %sub.5.neg.i.i = select i1 %cmp2.5.i.i, i32 -15625, i32 0
  %temp.1.5.i.i = add nsw i32 %sub.5.neg.i.i, %temp.1.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7812, i32 %temp.1.5.i.i)
  %cmp4.i.i = icmp ugt i32 %temp.1.5.i.i, 7812
  %inc6.i.i = zext i1 %cmp4.i.i to i32
  %spec.select.i.i = add i32 %dig_rf_freq.1.5.i.i, %inc6.i.i
  %conv.i.i = trunc i32 %spec.select.i.i to i8
  br label %while.cond.i.i.i102

while.cond.i.i.i102:                              ; preds = %if.end.i.i.i109, %mxl5007t_set_bw_bits.exit.i.i
  %i.0.i.i.i100 = phi i32 [ 0, %mxl5007t_set_bw_bits.exit.i.i ], [ %inc.i.i.i108, %if.end.i.i.i109 ]
  %arrayidx.i.i.i101 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i100
  %337 = ptrtoint ptr %arrayidx.i.i.i101 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx.i.i.i101, align 1
  %339 = zext i8 %338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %339, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %338, label %while.cond.i.i.i102.if.end.i.i.i109_crit_edge [
    i8 0, label %lor.rhs.i.i.i105
    i8 13, label %if.then.i.i.i107
  ]

while.cond.i.i.i102.if.end.i.i.i109_crit_edge:    ; preds = %while.cond.i.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i109

lor.rhs.i.i.i105:                                 ; preds = %while.cond.i.i.i102
  %val3.i.i.i103 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i100, i32 1
  %340 = ptrtoint ptr %val3.i.i.i103 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %val3.i.i.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool5.not.i.i.i104 = icmp eq i8 %341, 0
  br i1 %tobool5.not.i.i.i104, label %set_reg_bits.exit.i.i110, label %lor.rhs.i.i.i105.if.end.i.i.i109_crit_edge

lor.rhs.i.i.i105.if.end.i.i.i109_crit_edge:       ; preds = %lor.rhs.i.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i109

if.then.i.i.i107:                                 ; preds = %while.cond.i.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i.i.i106 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i.i.i100, i32 1
  %342 = ptrtoint ptr %val13.i.i.i106 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv.i.i, ptr %val13.i.i.i106, align 1
  br label %if.end.i.i.i109

if.end.i.i.i109:                                  ; preds = %if.then.i.i.i107, %lor.rhs.i.i.i105.if.end.i.i.i109_crit_edge, %while.cond.i.i.i102.if.end.i.i.i109_crit_edge
  %inc.i.i.i108 = add i32 %i.0.i.i.i100, 1
  br label %while.cond.i.i.i102

set_reg_bits.exit.i.i110:                         ; preds = %lor.rhs.i.i.i105
  %shr.i.i = lshr i32 %spec.select.i.i, 8
  %conv11.i.i = trunc i32 %shr.i.i to i8
  br label %while.cond.i40.i.i

while.cond.i40.i.i:                               ; preds = %if.end.i49.i.i, %set_reg_bits.exit.i.i110
  %i.0.i37.i.i = phi i32 [ 0, %set_reg_bits.exit.i.i110 ], [ %inc.i48.i.i, %if.end.i49.i.i ]
  %arrayidx.i38.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i37.i.i
  %343 = ptrtoint ptr %arrayidx.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx.i38.i.i, align 1
  %345 = zext i8 %344 to i64
  call void @__sanitizer_cov_trace_switch(i64 %345, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %344, label %while.cond.i40.i.i.if.end.i49.i.i_crit_edge [
    i8 0, label %lor.rhs.i43.i.i
    i8 14, label %if.then.i47.i.i
  ]

while.cond.i40.i.i.if.end.i49.i.i_crit_edge:      ; preds = %while.cond.i40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i49.i.i

lor.rhs.i43.i.i:                                  ; preds = %while.cond.i40.i.i
  %val3.i41.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i37.i.i, i32 1
  %346 = ptrtoint ptr %val3.i41.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %val3.i41.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool5.not.i42.i.i = icmp eq i8 %347, 0
  br i1 %tobool5.not.i42.i.i, label %set_reg_bits.exit50.i.i, label %lor.rhs.i43.i.i.if.end.i49.i.i_crit_edge

lor.rhs.i43.i.i.if.end.i49.i.i_crit_edge:         ; preds = %lor.rhs.i43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i49.i.i

if.then.i47.i.i:                                  ; preds = %while.cond.i40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i46.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i37.i.i, i32 1
  %348 = ptrtoint ptr %val13.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv11.i.i, ptr %val13.i46.i.i, align 1
  br label %if.end.i49.i.i

if.end.i49.i.i:                                   ; preds = %if.then.i47.i.i, %lor.rhs.i43.i.i.if.end.i49.i.i_crit_edge, %while.cond.i40.i.i.if.end.i49.i.i_crit_edge
  %inc.i48.i.i = add i32 %i.0.i37.i.i, 1
  br label %while.cond.i40.i.i

set_reg_bits.exit50.i.i:                          ; preds = %lor.rhs.i43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 332999999, i32 %5)
  %cmp12.i.i = icmp ugt i32 %5, 332999999
  br i1 %cmp12.i.i, label %set_reg_bits.exit50.i.i.while.cond.i54.i.i_crit_edge, label %set_reg_bits.exit50.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge

set_reg_bits.exit50.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge: ; preds = %set_reg_bits.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_calc_rf_tune_regs.exit.i

set_reg_bits.exit50.i.i.while.cond.i54.i.i_crit_edge: ; preds = %set_reg_bits.exit50.i.i
  br label %while.cond.i54.i.i

while.cond.i54.i.i:                               ; preds = %if.end.i63.i.i, %set_reg_bits.exit50.i.i.while.cond.i54.i.i_crit_edge
  %i.0.i51.i.i = phi i32 [ %inc.i62.i.i, %if.end.i63.i.i ], [ 0, %set_reg_bits.exit50.i.i.while.cond.i54.i.i_crit_edge ]
  %arrayidx.i52.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i51.i.i
  %349 = ptrtoint ptr %arrayidx.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx.i52.i.i, align 1
  %351 = zext i8 %350 to i64
  call void @__sanitizer_cov_trace_switch(i64 %351, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %350, label %while.cond.i54.i.i.if.end.i63.i.i_crit_edge [
    i8 0, label %lor.rhs.i57.i.i
    i8 -128, label %if.then.i61.i.i
  ]

while.cond.i54.i.i.if.end.i63.i.i_crit_edge:      ; preds = %while.cond.i54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i63.i.i

lor.rhs.i57.i.i:                                  ; preds = %while.cond.i54.i.i
  %val3.i55.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i51.i.i, i32 1
  %352 = ptrtoint ptr %val3.i55.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %val3.i55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool5.not.i56.i.i = icmp eq i8 %353, 0
  br i1 %tobool5.not.i56.i.i, label %lor.rhs.i57.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge, label %lor.rhs.i57.i.i.if.end.i63.i.i_crit_edge

lor.rhs.i57.i.i.if.end.i63.i.i_crit_edge:         ; preds = %lor.rhs.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i63.i.i

lor.rhs.i57.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge: ; preds = %lor.rhs.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxl5007t_calc_rf_tune_regs.exit.i

if.then.i61.i.i:                                  ; preds = %while.cond.i54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %val13.i60.i.i = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.0.i51.i.i, i32 1
  %354 = ptrtoint ptr %val13.i60.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %val13.i60.i.i, align 1
  %or30.i.i.i111 = or i8 %355, 64
  store i8 %or30.i.i.i111, ptr %val13.i60.i.i, align 1
  br label %if.end.i63.i.i

if.end.i63.i.i:                                   ; preds = %if.then.i61.i.i, %lor.rhs.i57.i.i.if.end.i63.i.i_crit_edge, %while.cond.i54.i.i.if.end.i63.i.i_crit_edge
  %inc.i62.i.i = add i32 %i.0.i51.i.i, 1
  br label %while.cond.i54.i.i

mxl5007t_calc_rf_tune_regs.exit.i:                ; preds = %lor.rhs.i57.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge, %set_reg_bits.exit50.i.i.mxl5007t_calc_rf_tune_regs.exit.i_crit_edge
  %356 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i81, i32 0, i32 1
  %357 = getelementptr inbounds i8, ptr %msg.i.i.i82, i32 4
  %flags.i.i.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i82, i32 0, i32 1
  %buf2.i.i.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i82, i32 0, i32 3
  br label %land.rhs.i.i119

land.rhs.i.i119:                                  ; preds = %mxl5007t_write_reg.exit.i.i128, %mxl5007t_calc_rf_tune_regs.exit.i
  %i.016.i.i116 = phi i32 [ 0, %mxl5007t_calc_rf_tune_regs.exit.i ], [ %inc.i.i127, %mxl5007t_write_reg.exit.i.i128 ]
  %arrayidx.i.i117 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.016.i.i116
  %358 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx.i.i117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i.i118 = icmp eq i8 %359, 0
  br i1 %tobool.not.i.i118, label %lor.rhs.i.i122, label %land.rhs.i.i119.while.body.i.i126_crit_edge

land.rhs.i.i119.while.body.i.i126_crit_edge:      ; preds = %land.rhs.i.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i126

lor.rhs.i.i122:                                   ; preds = %land.rhs.i.i119
  %val.i.i120 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.016.i.i116, i32 1
  %360 = ptrtoint ptr %val.i.i120 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %val.i.i120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool3.not.i.i121 = icmp eq i8 %361, 0
  br i1 %tobool3.not.i.i121, label %if.end39.critedge, label %lor.rhs.i.i122.while.body.i.i126_crit_edge

lor.rhs.i.i122.while.body.i.i126_crit_edge:       ; preds = %lor.rhs.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i126

while.body.i.i126:                                ; preds = %lor.rhs.i.i122.while.body.i.i126_crit_edge, %land.rhs.i.i119.while.body.i.i126_crit_edge
  %val7.i.i123 = getelementptr %struct.reg_pair_t, ptr %tab_rftune.i.i, i32 %i.016.i.i116, i32 1
  %362 = ptrtoint ptr %val7.i.i123 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %val7.i.i123, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i81) #6
  %364 = ptrtoint ptr %buf.i.i.i81 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %359, ptr %buf.i.i.i81, align 1
  %365 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %363, ptr %356, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i82) #6
  %366 = ptrtoint ptr %357 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 196607, ptr %357, align 4
  %367 = ptrtoint ptr %i2c_props.i.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %i2c_props.i.i.i, align 4
  %conv.i.i.i124 = zext i8 %368 to i16
  %369 = ptrtoint ptr %msg.i.i.i82 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %conv.i.i.i124, ptr %msg.i.i.i82, align 4
  %370 = ptrtoint ptr %flags.i.i.i113 to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 0, ptr %flags.i.i.i113, align 2
  %371 = ptrtoint ptr %buf2.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %buf.i.i.i81, ptr %buf2.i.i.i114, align 4
  %372 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i11.i = call i32 @i2c_transfer(ptr noundef %373, ptr noundef nonnull %msg.i.i.i82, i32 noundef 1) #6
  %cmp.not.i.i.i125 = icmp eq i32 %call.i.i11.i, 1
  br i1 %cmp.not.i.i.i125, label %mxl5007t_write_reg.exit.i.i128, label %do.end32

mxl5007t_write_reg.exit.i.i128:                   ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i82) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i81) #6
  %inc.i.i127 = add i32 %i.016.i.i116, 1
  br label %land.rhs.i.i119

do.end32:                                         ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i82) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i81) #6
  %call2.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.55, i32 noundef -121, i32 noundef 530) #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, i32 noundef -121, i32 noundef 641) #9
  br label %fail

if.end39.critedge:                                ; preds = %lor.rhs.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 3) #6
  %frequency40 = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 9
  %374 = ptrtoint ptr %frequency40 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %5, ptr %frequency40, align 4
  %bandwidth_hz41 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %375 = ptrtoint ptr %bandwidth_hz41 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %bandwidth_hz41, align 4
  %bandwidth = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 10
  %377 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %bandwidth, align 4
  br label %fail

fail:                                             ; preds = %if.end39.critedge, %do.end32, %do.end16
  %ret.0 = phi i32 [ 0, %if.end39.critedge ], [ -121, %do.end16 ], [ -121, %do.end32 ]
  call void @mutex_unlock(ptr noundef %lock) #6
  %378 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool45.not = icmp eq ptr %379, null
  br i1 %tobool45.not, label %fail.cleanup_crit_edge, label %if.then46

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 %379(ptr noundef %fe, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %fail.cleanup_crit_edge, %do.end, %sw.bb2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %ret.0, %if.then46 ], [ %ret.0, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %frequency, align 4
  %if_freq = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %4)
  %5 = icmp ult i32 %4, 11
  br i1 %5, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.mxl5007t_get_if_frequency, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %frequency, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl5007t_get_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %d.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #6
  %5 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %d.i, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -5, ptr %buf.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -40, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %i2c_props.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_props.i.i, align 4
  %conv.i.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %9, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %arrayinit.element4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element4.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %arrayinit.element4.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %19 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len10.i.i, align 4
  %buf11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %d.i, ptr %buf11.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.mxl5007t_state, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end5.critedge.i, label %do.end

if.end5.critedge.i:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %23 = ptrtoint ptr %d.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %d.i, align 1
  %25 = and i8 %24, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %25)
  %cmp7.i = icmp eq i8 %25, 12
  %26 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp13.i = icmp eq i8 %26, 3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #6
  %27 = load i32, ptr @mxl5007t_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.end5.critedge.i.if.end22_crit_edge, label %do.end16

if.end5.critedge.i.if.end22_crit_edge:            ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 481) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.64, i32 noundef -121, i32 noundef 549) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #6
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.57, i32 noundef -121, i32 noundef 574) #9
  br label %fail

do.end16:                                         ; preds = %if.end5.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %cmp7.i, ptr @.str.61, ptr @.str.62
  %cond20 = select i1 %cmp13.i, ptr @.str.63, ptr @.str.62
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, ptr noundef nonnull %cond20) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end16, %if.end5.critedge.i.if.end22_crit_edge
  %28 = or i1 %cmp7.i, %cmp13.i
  br i1 %28, label %if.then25, label %if.end22.fail_crit_edge

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %or = or i32 %30, 1
  store i32 %or, ptr %status, align 4
  br label %fail

fail:                                             ; preds = %if.then25, %if.end22.fail_crit_edge, %do.end
  %retval.0.i25.i54 = phi i32 [ -121, %do.end ], [ 0, %if.then25 ], [ 0, %if.end22.fail_crit_edge ]
  %31 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool29.not = icmp eq ptr %32, null
  br i1 %tobool29.not, label %fail.if.end34_crit_edge, label %if.then30

fail.if.end34_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 %32(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %fail.if.end34_crit_edge
  ret i32 %retval.0.i25.i54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mxl5007t.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mxl5007t.c", i32 19, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mxl5007t.c", i32 844, i32 13}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mxl5007t_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mxl5007t_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mxl5007t_attach._entry.4, !6, !"_entry", i1 false, i1 false}
!14 = !{ptr @mxl5007t_attach._entry_ptr.6, !6, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mxl5007t_attach.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/mxl5007t.c", i32 854, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/mxl5007t.c", i32 865, i32 7}
!20 = !{ptr @mxl5007t_attach._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxl5007t_attach._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mxl5007t_attach._entry.11, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/mxl5007t.c", i32 881, i32 6}
!24 = !{ptr @mxl5007t_attach._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mxl5007t_attach._entry.13, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/mxl5007t.c", i32 893, i32 6}
!27 = !{ptr @mxl5007t_attach._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_mxl5007t_attach, !29, !"__ksymtab_mxl5007t_attach", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/mxl5007t.c", i32 910, i32 1}
!30 = !{ptr @__UNIQUE_ID_description292, !31, !"__UNIQUE_ID_description292", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/mxl5007t.c", i32 911, i32 1}
!32 = !{ptr @__UNIQUE_ID_author293, !33, !"__UNIQUE_ID_author293", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/mxl5007t.c", i32 912, i32 1}
!34 = !{ptr @__UNIQUE_ID_file294, !35, !"__UNIQUE_ID_file294", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/mxl5007t.c", i32 913, i32 1}
!36 = !{ptr @__UNIQUE_ID_license295, !35, !"__UNIQUE_ID_license295", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_version296, !38, !"__UNIQUE_ID_version296", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/mxl5007t.c", i32 914, i32 1}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__modver_attr, !38, !"__modver_attr", i1 false, i1 false}
!42 = !{ptr @mxl5007t_debug, !43, !"mxl5007t_debug", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/mxl5007t.c", i32 17, i32 12}
!44 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/mxl5007t.c", i32 14, i32 8}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mxl5007t_list_mutex, !46, !"mxl5007t_list_mutex", i1 false, i1 false}
!49 = !{ptr @hybrid_tuner_instance_list, !50, !"hybrid_tuner_instance_list", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/mxl5007t.c", i32 15, i32 8}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/mxl5007t.c", i32 792, i32 6}
!53 = !{ptr @mxl5007t_get_chip_id._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mxl5007t_get_chip_id._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/tuners/mxl5007t.c", i32 797, i32 10}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/mxl5007t.c", i32 800, i32 10}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/mxl5007t.c", i32 803, i32 10}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/mxl5007t.c", i32 806, i32 10}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/mxl5007t.c", i32 809, i32 10}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/mxl5007t.c", i32 812, i32 10}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/mxl5007t.c", i32 815, i32 10}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/mxl5007t.c", i32 818, i32 10}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/mxl5007t.c", i32 819, i32 3}
!73 = !{ptr @mxl5007t_get_chip_id._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mxl5007t_get_chip_id._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/mxl5007t.c", i32 823, i32 2}
!77 = !{ptr @mxl5007t_get_chip_id._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mxl5007t_get_chip_id._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/mxl5007t.c", i32 828, i32 2}
!81 = !{ptr @mxl5007t_get_chip_id._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mxl5007t_get_chip_id._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/mxl5007t.c", i32 481, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mxl5007t_read_reg._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mxl5007t_read_reg._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/mxl5007t.c", i32 497, i32 3}
!90 = !{ptr @mxl5007t_soft_reset._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mxl5007t_soft_reset._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/mxl5007t.c", i32 448, i32 3}
!94 = !{ptr @mxl5007t_write_reg._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mxl5007t_write_reg._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mxl5007t_tuner_ops, !97, !"mxl5007t_tuner_ops", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/mxl5007t.c", i32 771, i32 35}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/mxl5007t.c", i32 667, i32 2}
!100 = !{ptr @mxl5007t_init._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mxl5007t_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/mxl5007t.c", i32 685, i32 2}
!104 = !{ptr @mxl5007t_sleep._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mxl5007t_sleep._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @mxl5007t_sleep._entry.43, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/mxl5007t.c", i32 687, i32 2}
!108 = !{ptr @mxl5007t_sleep._entry_ptr.44, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/mxl5007t.c", i32 627, i32 3}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mxl5007t_set_params._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mxl5007t_set_params._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mxl5007t_set_params._entry.47, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/mxl5007t.c", i32 637, i32 6}
!116 = !{ptr @mxl5007t_set_params._entry_ptr.48, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mxl5007t_set_params._entry.49, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/mxl5007t.c", i32 641, i32 6}
!119 = !{ptr @mxl5007t_set_params._entry_ptr.50, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/tuners/mxl5007t.c", i32 513, i32 6}
!122 = !{ptr @mxl5007t_tuner_init._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mxl5007t_tuner_init._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @init_tab, !125, !"init_tab", i1 false, i1 false}
!125 = !{!"../drivers/media/tuners/mxl5007t.c", i32 78, i32 26}
!126 = !{ptr @init_tab_cable, !127, !"init_tab_cable", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/mxl5007t.c", i32 98, i32 26}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/tuners/mxl5007t.c", i32 220, i32 3}
!130 = !{ptr @mxl5007t_set_mode_bits._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mxl5007t_set_mode_bits._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/tuners/mxl5007t.c", i32 265, i32 3}
!134 = !{ptr @mxl5007t_set_if_freq_bits._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mxl5007t_set_if_freq_bits._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/tuners/mxl5007t.c", i32 338, i32 3}
!138 = !{ptr @mxl5007t_set_xtal_freq_bits._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mxl5007t_set_xtal_freq_bits._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/mxl5007t.c", i32 530, i32 6}
!142 = !{ptr @mxl5007t_tuner_rf_tune._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mxl5007t_tuner_rf_tune._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @reg_pair_rftune, !145, !"reg_pair_rftune", i1 false, i1 false}
!145 = !{!"../drivers/media/tuners/mxl5007t.c", i32 123, i32 26}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/mxl5007t.c", i32 390, i32 3}
!148 = !{ptr @mxl5007t_set_bw_bits._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mxl5007t_set_bw_bits._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/mxl5007t.c", i32 574, i32 6}
!152 = !{ptr @mxl5007t_get_status._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mxl5007t_get_status._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/mxl5007t.c", i32 576, i32 2}
!156 = !{ptr @mxl5007t_get_status._entry.58, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mxl5007t_get_status._entry_ptr.60, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/tuners/mxl5007t.c", i32 549, i32 6}
!163 = !{ptr @mxl5007t_synth_lock_status._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @mxl5007t_synth_lock_status._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/tuners/mxl5007t.c", i32 762, i32 3}
!167 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mxl5007t_release._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @mxl5007t_release._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
