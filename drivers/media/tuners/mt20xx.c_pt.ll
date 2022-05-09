; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mt20xx.c_pt.bc'
source_filename = "../drivers/media/tuners/mt20xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+microtune_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_microtune_attach\09\09\09\09"
module asm "\09.long\09__crc_microtune_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_microtune_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22microtune_attach\22\09\09\09\09\09"
module asm "__kstrtabns_microtune_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.microtune_priv = type { %struct.tuner_i2c_props, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [13 x i8] c"mt20xx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"mt20xx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [48 x i8] c"mt20xx.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_optimize_vco = internal constant [20 x i8] c"mt20xx.optimize_vco\00", align 1
@optimize_vco = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_optimize_vco = internal constant %struct.kernel_param { ptr @__param_str_optimize_vco, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @optimize_vco } }, section "__param", align 4
@__UNIQUE_ID_optimize_vcotype292 = internal constant [33 x i8] c"mt20xx.parmtype=optimize_vco:int\00", section ".modinfo", align 1
@__param_str_tv_antenna = internal constant [18 x i8] c"mt20xx.tv_antenna\00", align 1
@tv_antenna = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tv_antenna = internal constant %struct.kernel_param { ptr @__param_str_tv_antenna, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tv_antenna } }, section "__param", align 4
@__UNIQUE_ID_tv_antennatype293 = internal constant [31 x i8] c"mt20xx.parmtype=tv_antenna:int\00", section ".modinfo", align 1
@__param_str_radio_antenna = internal constant [21 x i8] c"mt20xx.radio_antenna\00", align 1
@radio_antenna = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_radio_antenna = internal constant %struct.kernel_param { ptr @__param_str_radio_antenna, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @radio_antenna } }, section "__param", align 4
@__UNIQUE_ID_radio_antennatype294 = internal constant [34 x i8] c"mt20xx.parmtype=radio_antenna:int\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt20xx\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@microtune_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d-%04x: MT20xx hexdump: %*ph\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"microtune_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/mt20xx.c\00", [34 x i8] zeroinitializer }, align 32
@microtune_attach._entry_ptr = internal global ptr @microtune_attach._entry, section ".printk_index", align 4
@microtune_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s %d-%04x: microtune: companycode=%04x part=%02x rev=%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@microtune_attach._entry_ptr.7 = internal global ptr @microtune_attach._entry.5, section ".printk_index", align 4
@microtune_part = internal constant { [67 x ptr], [84 x i8] } { [67 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr null, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.17], [84 x i8] zeroinitializer }, align 32
@microtune_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s %d-%04x: microtune %s found, not (yet?) supported, sorry :-/\0A\00", [61 x i8] zeroinitializer }, align 32
@microtune_attach._entry_ptr.10 = internal global ptr @microtune_attach._entry.8, section ".printk_index", align 4
@microtune_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: microtune %s found, OK\0A\00", [58 x i8] zeroinitializer }, align 32
@microtune_attach._entry_ptr.13 = internal global ptr @microtune_attach._entry.11, section ".printk_index", align 4
@__kstrtab_microtune_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_microtune_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_microtune_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @microtune_attach to i32), ptr @__kstrtab_microtune_attach, ptr @__kstrtabns_microtune_attach }, section "___ksymtab_gpl+microtune_attach", align 4
@__UNIQUE_ID_description295 = internal constant [42 x i8] c"mt20xx.description=Microtune tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [55 x i8] c"mt20xx.author=Ralph Metzler, Gerd Knorr, Gunther Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [40 x i8] c"mt20xx.file=drivers/media/tuners/mt20xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"mt20xx.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2032\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2030\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2040\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MT2050\00", [25 x i8] zeroinitializer }, align 32
@mt2032_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: mt2032: xogc = 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt2032_init\00", [20 x i8] zeroinitializer }, align 32
@mt2032_init._entry_ptr = internal global ptr @mt2032_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt2032_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d-%04x: mt2032: xok = 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@mt2032_init._entry_ptr.22 = internal global ptr @mt2032_init._entry.20, section ".printk_index", align 4
@mt2032_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2032_init._entry_ptr.24 = internal global ptr @mt2032_init._entry.23, section ".printk_index", align 4
@mt2032_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.4, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2032_init._entry_ptr.27 = internal global ptr @mt2032_init._entry.25, section ".printk_index", align 4
@mt2032_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @microtune_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2032_set_params, ptr null, ptr @microtune_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt2032_set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d-%04x: pinnacle ntsc\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2032_set_radio_freq\00", [42 x i8] zeroinitializer }, align 32
@mt2032_set_radio_freq._entry_ptr = internal global ptr @mt2032_set_radio_freq._entry, section ".printk_index", align 4
@mt2032_set_radio_freq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s %d-%04x: pinnacle pal\0A\00", [36 x i8] zeroinitializer }, align 32
@mt2032_set_radio_freq._entry_ptr.32 = internal global ptr @mt2032_set_radio_freq._entry.30, section ".printk_index", align 4
@mt2032_set_if_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s %d-%04x: mt2032_set_if_freq rfin=%d if1=%d if2=%d from=%d to=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt2032_set_if_freq\00", [45 x i8] zeroinitializer }, align 32
@mt2032_set_if_freq._entry_ptr = internal global ptr @mt2032_set_if_freq._entry, section ".printk_index", align 4
@mt2032_set_if_freq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 3)\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2032_set_if_freq._entry_ptr.37 = internal global ptr @mt2032_set_if_freq._entry.35, section ".printk_index", align 4
@mt2032_set_if_freq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.4, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: mt2032: re-init PLLs by LINT\0A\00", [52 x i8] zeroinitializer }, align 32
@mt2032_set_if_freq._entry_ptr.40 = internal global ptr @mt2032_set_if_freq._entry.38, section ".printk_index", align 4
@mt2032_set_if_freq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.4, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: MT2032 Fatal Error: PLLs didn't lock.\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2032_set_if_freq._entry_ptr.43 = internal global ptr @mt2032_set_if_freq._entry.41, section ".printk_index", align 4
@mt2032_set_if_freq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.34, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2032_set_if_freq._entry_ptr.45 = internal global ptr @mt2032_set_if_freq._entry.44, section ".printk_index", align 4
@mt2032_compute_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017%s %d-%04x: mt2032: rfin=%d lo1=%d lo1n=%d lo1a=%d sel=%d, lo1freq=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2032_compute_freq\00", [44 x i8] zeroinitializer }, align 32
@mt2032_compute_freq._entry_ptr = internal global ptr @mt2032_compute_freq._entry, section ".printk_index", align 4
@mt2032_compute_freq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s %d-%04x: mt2032: rfin=%d lo2=%d lo2n=%d lo2a=%d num=%d lo2freq=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mt2032_compute_freq._entry_ptr.50 = internal global ptr @mt2032_compute_freq._entry.48, section ".printk_index", align 4
@mt2032_compute_freq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s %d-%04x: mt2032: frequency parameters out of range: %d %d %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mt2032_compute_freq._entry_ptr.53 = internal global ptr @mt2032_compute_freq._entry.51, section ".printk_index", align 4
@mt2032_spurcheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s %d-%04x: spurcheck f1=%d f2=%d  from=%d to=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2032_spurcheck\00", [47 x i8] zeroinitializer }, align 32
@mt2032_spurcheck._entry_ptr = internal global ptr @mt2032_spurcheck._entry, section ".printk_index", align 4
@mt2032_spurcheck._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s %d-%04x: spurtest n1=%d n2=%d ftest=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mt2032_spurcheck._entry_ptr.58 = internal global ptr @mt2032_spurcheck._entry.56, section ".printk_index", align 4
@mt2032_spurcheck._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: mt2032 spurcheck triggered: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mt2032_spurcheck._entry_ptr.61 = internal global ptr @mt2032_spurcheck._entry.59, section ".printk_index", align 4
@mt2032_check_lo_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: mt2032 Reg.E=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt2032_check_lo_lock\00", [43 x i8] zeroinitializer }, align 32
@mt2032_check_lo_lock._entry_ptr = internal global ptr @mt2032_check_lo_lock._entry, section ".printk_index", align 4
@mt2032_check_lo_lock._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %d-%04x: mt2032: pll wait 1ms for lock (0x%2x)\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2032_check_lo_lock._entry_ptr.66 = internal global ptr @mt2032_check_lo_lock._entry.64, section ".printk_index", align 4
@mt2032_optimize_vco._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: mt2032 Reg.F=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2032_optimize_vco\00", [44 x i8] zeroinitializer }, align 32
@mt2032_optimize_vco._entry_ptr = internal global ptr @mt2032_optimize_vco._entry, section ".printk_index", align 4
@mt2032_optimize_vco._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.4, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: mt2032 optimize_vco: sel=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mt2032_optimize_vco._entry_ptr.71 = internal global ptr @mt2032_optimize_vco._entry.69, section ".printk_index", align 4
@mt2050_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s %d-%04x: mt2050: sro is %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt2050_init\00", [20 x i8] zeroinitializer }, align 32
@mt2050_init._entry_ptr = internal global ptr @mt2050_init._entry, section ".printk_index", align 4
@mt2050_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @microtune_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2050_set_params, ptr null, ptr @microtune_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt2050_set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.74, ptr @.str.4, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2050_set_radio_freq\00", [42 x i8] zeroinitializer }, align 32
@mt2050_set_radio_freq._entry_ptr = internal global ptr @mt2050_set_radio_freq._entry, section ".printk_index", align 4
@mt2050_set_radio_freq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.74, ptr @.str.4, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2050_set_radio_freq._entry_ptr.76 = internal global ptr @mt2050_set_radio_freq._entry.75, section ".printk_index", align 4
@mt2050_set_if_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s %d-%04x: mt2050_set_if_freq freq=%d if1=%d if2=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt2050_set_if_freq\00", [45 x i8] zeroinitializer }, align 32
@mt2050_set_if_freq._entry_ptr = internal global ptr @mt2050_set_if_freq._entry, section ".printk_index", align 4
@mt2050_set_if_freq._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s %d-%04x: lo1 lo2 = %d %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2050_set_if_freq._entry_ptr.81 = internal global ptr @mt2050_set_if_freq._entry.79, section ".printk_index", align 4
@mt2050_set_if_freq._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s %d-%04x: num1 num2 div1a div1b div2a div2b= %x %x %x %x %x %x\0A\00", [60 x i8] zeroinitializer }, align 32
@mt2050_set_if_freq._entry_ptr.84 = internal global ptr @mt2050_set_if_freq._entry.82, section ".printk_index", align 4
@mt2050_set_if_freq._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d-%04x: bufs is: %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@mt2050_set_if_freq._entry_ptr.87 = internal global ptr @mt2050_set_if_freq._entry.85, section ".printk_index", align 4
@mt2050_set_if_freq._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.4, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 6)\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2050_set_if_freq._entry_ptr.90 = internal global ptr @mt2050_set_if_freq._entry.88, section ".printk_index", align 4
@mt2050_set_antenna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s %d-%04x: mt2050: enabled antenna connector %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt2050_set_antenna\00", [45 x i8] zeroinitializer }, align 32
@mt2050_set_antenna._entry_ptr = internal global ptr @mt2050_set_antenna._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 66]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 15, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"optimize_vco\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 21, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"tv_antenna\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 24, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"radio_antenna\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 27, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 606, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 612, i32 9 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 617, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 620, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"microtune_part\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 37, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 635, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 642, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 39, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 38, i32 15 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 40, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 41, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 400, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 406, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 410, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 419, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"mt2032_tuner_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 365, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 330, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 333, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 249, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 269, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 279, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 289, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 295, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 138, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 148, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 153, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 78, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 87, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 90, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 192, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 198, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 213, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 231, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 583, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"mt2050_tuner_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 560, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 526, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 529, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 447, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 474, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 475, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 490, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 494, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [33 x i8] c"../drivers/media/tuners/mt20xx.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 436, i32 2 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_optimize_vcotype292, ptr @__UNIQUE_ID_radio_antennatype294, ptr @__UNIQUE_ID_tv_antennatype293, ptr @__ksymtab_microtune_attach, ptr @__param_debug, ptr @__param_optimize_vco, ptr @__param_radio_antenna, ptr @__param_tv_antenna, ptr @microtune_attach._entry, ptr @microtune_attach._entry.11, ptr @microtune_attach._entry.5, ptr @microtune_attach._entry.8, ptr @microtune_attach._entry_ptr, ptr @microtune_attach._entry_ptr.10, ptr @microtune_attach._entry_ptr.13, ptr @microtune_attach._entry_ptr.7, ptr @mt2032_check_lo_lock._entry, ptr @mt2032_check_lo_lock._entry.64, ptr @mt2032_check_lo_lock._entry_ptr, ptr @mt2032_check_lo_lock._entry_ptr.66, ptr @mt2032_compute_freq._entry, ptr @mt2032_compute_freq._entry.48, ptr @mt2032_compute_freq._entry.51, ptr @mt2032_compute_freq._entry_ptr, ptr @mt2032_compute_freq._entry_ptr.50, ptr @mt2032_compute_freq._entry_ptr.53, ptr @mt2032_init._entry, ptr @mt2032_init._entry.20, ptr @mt2032_init._entry.23, ptr @mt2032_init._entry.25, ptr @mt2032_init._entry_ptr, ptr @mt2032_init._entry_ptr.22, ptr @mt2032_init._entry_ptr.24, ptr @mt2032_init._entry_ptr.27, ptr @mt2032_optimize_vco._entry, ptr @mt2032_optimize_vco._entry.69, ptr @mt2032_optimize_vco._entry_ptr, ptr @mt2032_optimize_vco._entry_ptr.71, ptr @mt2032_set_if_freq._entry, ptr @mt2032_set_if_freq._entry.35, ptr @mt2032_set_if_freq._entry.38, ptr @mt2032_set_if_freq._entry.41, ptr @mt2032_set_if_freq._entry.44, ptr @mt2032_set_if_freq._entry_ptr, ptr @mt2032_set_if_freq._entry_ptr.37, ptr @mt2032_set_if_freq._entry_ptr.40, ptr @mt2032_set_if_freq._entry_ptr.43, ptr @mt2032_set_if_freq._entry_ptr.45, ptr @mt2032_set_radio_freq._entry, ptr @mt2032_set_radio_freq._entry.30, ptr @mt2032_set_radio_freq._entry_ptr, ptr @mt2032_set_radio_freq._entry_ptr.32, ptr @mt2032_spurcheck._entry, ptr @mt2032_spurcheck._entry.56, ptr @mt2032_spurcheck._entry.59, ptr @mt2032_spurcheck._entry_ptr, ptr @mt2032_spurcheck._entry_ptr.58, ptr @mt2032_spurcheck._entry_ptr.61, ptr @mt2050_init._entry, ptr @mt2050_init._entry_ptr, ptr @mt2050_set_antenna._entry, ptr @mt2050_set_antenna._entry_ptr, ptr @mt2050_set_if_freq._entry, ptr @mt2050_set_if_freq._entry.79, ptr @mt2050_set_if_freq._entry.82, ptr @mt2050_set_if_freq._entry.85, ptr @mt2050_set_if_freq._entry.88, ptr @mt2050_set_if_freq._entry_ptr, ptr @mt2050_set_if_freq._entry_ptr.81, ptr @mt2050_set_if_freq._entry_ptr.84, ptr @mt2050_set_if_freq._entry_ptr.87, ptr @mt2050_set_if_freq._entry_ptr.90, ptr @mt2050_set_radio_freq._entry, ptr @mt2050_set_radio_freq._entry.75, ptr @mt2050_set_radio_freq._entry_ptr, ptr @mt2050_set_radio_freq._entry_ptr.76, ptr @debug, ptr @optimize_vco, ptr @tv_antenna, ptr @radio_antenna, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @microtune_part, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @mt2032_tuner_ops, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @mt2050_tuner_ops, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optimize_vco to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_antenna to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_antenna to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_part to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_radio_freq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_if_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_if_freq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_if_freq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_if_freq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_set_if_freq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_compute_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_compute_freq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_compute_freq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_spurcheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_spurcheck._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_spurcheck._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_check_lo_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_check_lo_lock._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_optimize_vco._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2032_optimize_vco._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_radio_freq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_if_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_if_freq._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_if_freq._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_if_freq._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_if_freq._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2050_set_antenna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @microtune_attach(ptr noundef %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  %msg.i18.i = alloca %struct.i2c_msg, align 4
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %msg.i1.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i174 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 17
  %1 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 18
  %2 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 19
  %3 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %i2c_addr, ptr %call7.i.i, align 8
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_adap, ptr %adap, align 4
  %name3 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name3, align 4
  %9 = call ptr @memset(ptr %buf, i32 0, i32 21)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 131071, ptr %10, align 4
  %conv.i = zext i8 %i2c_addr to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174) #6
  %15 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1441791, ptr %15, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i, align 8
  %conv.i175 = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i175, ptr %msg.i174, align 4
  %flags.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i176 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags.i176, align 2
  %buf4.i178 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %21 = ptrtoint ptr %buf4.i178 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf4.i178, align 4
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 4
  %call.i180 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i174, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174) #6
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end.if.end32_crit_edge, label %do.end

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end:                                           ; preds = %if.end
  %25 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name3, align 4
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %30, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %32 to i32
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %26, i32 noundef %cond, i32 noundef %conv, i32 noundef 21, ptr noundef nonnull %buf) #10
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.end.if.end32_crit_edge
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  %conv33 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv33, 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %conv35 = zext i8 %36 to i32
  %or = or i32 %shl, %conv35
  %37 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name3, align 4
  %39 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap, align 4
  %tobool46.not = icmp eq ptr %40, null
  br i1 %tobool46.not, label %if.end32.cond.end52_crit_edge, label %cond.true47

if.end32.cond.end52_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end52

cond.true47:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i181 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %nr.i181 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i181, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true47, %if.end32.cond.end52_crit_edge
  %cond53 = phi i32 [ %42, %cond.true47 ], [ -1, %if.end32.cond.end52_crit_edge ]
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call7.i.i, align 8
  %conv56 = zext i8 %44 to i32
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %2, align 1
  %conv58 = zext i8 %46 to i32
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %3, align 1
  %conv60 = zext i8 %48 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %38, i32 noundef %cond53, i32 noundef %conv56, i32 noundef %or, i32 noundef %conv58, i32 noundef %conv60) #10
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %50)
  %cmp68 = icmp ult i8 %50, 67
  br i1 %cmp68, label %land.lhs.true, label %cond.end52.if.end78_crit_edge

cond.end52.if.end78_crit_edge:                    ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

land.lhs.true:                                    ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = zext i8 %50 to i32
  %arrayidx71 = getelementptr [67 x ptr], ptr @microtune_part, i32 0, i32 %conv67
  %51 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx71, align 4
  %cmp72.not = icmp eq ptr %52, null
  %spec.select = select i1 %cmp72.not, ptr @.str.1, ptr %52
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true, %cond.end52.if.end78_crit_edge
  %name.0 = phi ptr [ @.str.1, %cond.end52.if.end78_crit_edge ], [ %spec.select, %land.lhs.true ]
  %53 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i8 %50, label %do.end88 [
    i8 4, label %sw.bb
    i8 66, label %sw.bb82
  ]

sw.bb:                                            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mt2032_init(ptr noundef %fe)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end78
  %54 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %56 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %57 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %buf.i, align 1
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 16, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %59 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 196607, ptr %59, align 4
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %55, align 4
  %conv.i.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 1
  %66 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  %68 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 15, ptr %buf.i, align 1
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 15, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i) #6
  %70 = getelementptr inbounds i8, ptr %msg.i1.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %55, align 4
  %conv.i2.i = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i2.i, ptr %msg.i1.i, align 4
  %flags.i3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i3.i, align 2
  %buf4.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf4.i5.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf.i, ptr %buf4.i5.i, align 4
  %77 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adap.i.i, align 4
  %call.i7.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i1.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i) #6
  %79 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 13, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #6
  %80 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 131071, ptr %80, align 4
  %82 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %55, align 4
  %conv.i11.i = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i11.i, ptr %msg.i10.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i12.i, align 2
  %buf4.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %86 = ptrtoint ptr %buf4.i14.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i, ptr %buf4.i14.i, align 4
  %87 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adap.i.i, align 4
  %call.i16.i = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18.i) #6
  %89 = getelementptr inbounds i8, ptr %msg.i18.i, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 131071, ptr %89, align 4
  %91 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %55, align 4
  %conv.i19.i = zext i8 %92 to i16
  %93 = ptrtoint ptr %msg.i18.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i19.i, ptr %msg.i18.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %flags.i20.i, align 2
  %buf4.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18.i, i32 0, i32 3
  %95 = ptrtoint ptr %buf4.i22.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %buf.i, ptr %buf4.i22.i, align 4
  %96 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adap.i.i, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i18.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18.i) #6
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i, label %sw.bb82.mt2050_init.exit_crit_edge, label %do.end.i

sw.bb82.mt2050_init.exit_crit_edge:               ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2050_init.exit

do.end.i:                                         ; preds = %sw.bb82
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 3
  %99 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name.i, align 4
  %101 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adap.i.i, align 4
  %tobool18.not.i = icmp eq ptr %102, null
  br i1 %tobool18.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %104, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %105 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %55, align 4
  %conv.i182 = zext i8 %106 to i32
  %107 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %buf.i, align 1
  %conv24.i = zext i8 %108 to i32
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %100, i32 noundef %cond.i, i32 noundef %conv.i182, i32 noundef %conv24.i) #10
  br label %mt2050_init.exit

mt2050_init.exit:                                 ; preds = %cond.end.i, %sw.bb82.mt2050_init.exit_crit_edge
  %tuner_ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %109 = call ptr @memcpy(ptr %tuner_ops.i, ptr @mt2050_tuner_ops, i32 220)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %sw.epilog

do.end88:                                         ; preds = %if.end78
  %110 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name3, align 4
  %112 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adap, align 4
  %tobool94.not = icmp eq ptr %113, null
  br i1 %tobool94.not, label %do.end88.cond.end100_crit_edge, label %cond.true95

do.end88.cond.end100_crit_edge:                   ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end100

cond.true95:                                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i183 = getelementptr inbounds %struct.i2c_adapter, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %nr.i183 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nr.i183, align 4
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true95, %do.end88.cond.end100_crit_edge
  %cond101 = phi i32 [ %115, %cond.true95 ], [ -1, %do.end88.cond.end100_crit_edge ]
  %116 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %call7.i.i, align 8
  %conv104 = zext i8 %117 to i32
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %111, i32 noundef %cond101, i32 noundef %conv104, ptr noundef nonnull %name.0) #10
  br label %cleanup

sw.epilog:                                        ; preds = %mt2050_init.exit, %sw.bb
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %call112 = call i32 @strscpy(ptr noundef %tuner_ops, ptr noundef nonnull %name.0, i32 noundef 128) #6
  %118 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name3, align 4
  %120 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adap, align 4
  %tobool123.not = icmp eq ptr %121, null
  br i1 %tobool123.not, label %sw.epilog.cond.end129_crit_edge, label %cond.true124

sw.epilog.cond.end129_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end129

cond.true124:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i184 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 11
  %122 = ptrtoint ptr %nr.i184 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nr.i184, align 4
  br label %cond.end129

cond.end129:                                      ; preds = %cond.true124, %sw.epilog.cond.end129_crit_edge
  %cond130 = phi i32 [ %123, %cond.true124 ], [ -1, %sw.epilog.cond.end129_crit_edge ]
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %call7.i.i, align 8
  %conv133 = zext i8 %125 to i32
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %119, i32 noundef %cond130, i32 noundef %conv133, ptr noundef nonnull %name.0) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end129, %cond.end100, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cond.end100 ], [ %fe, %cond.end129 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2032_init(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %msg.i27 = alloca %struct.i2c_msg, align 4
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %msg.i10 = alloca %struct.i2c_msg, align 4
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 3
  %4 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 7
  %8 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 8
  %9 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 9
  %10 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 10
  %11 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 12
  %12 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 13
  %13 = call ptr @memset(ptr %buf, i32 255, i32 21)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %3, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 31, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 327679, ptr %17, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 4
  %conv.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %2, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %5, align 1
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -28, ptr %6, align 1
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -113, ptr %7, align 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -61, ptr %8, align 1
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 78, ptr %9, align 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -20, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #6
  %32 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 458751, ptr %32, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 4
  %conv.i2 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i2, ptr %msg.i1, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i3, align 2
  %buf4.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %38 = ptrtoint ptr %buf4.i5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %5, ptr %buf4.i5, align 4
  %39 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap.i, align 4
  %call.i7 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #6
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 13, ptr %11, align 1
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 50, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10) #6
  %43 = getelementptr inbounds i8, ptr %msg.i10, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 4
  %conv.i11 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i11, ptr %msg.i10, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i12, align 2
  %buf4.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 3
  %49 = ptrtoint ptr %buf4.i14 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %11, ptr %buf4.i14, align 4
  %50 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adap.i, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i10, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10) #6
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %buf4.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %53 = getelementptr inbounds i8, ptr %msg.i27, i32 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 1
  %buf4.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 3
  %54 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %buf4.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %xogc.0 = phi i32 [ 7, %entry ], [ %dec78, %do.body.backedge ]
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %do.body.do.end34_crit_edge, label %do.end

do.body.do.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end:                                           ; preds = %do.body
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  %58 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adap.i, align 4
  %tobool25.not = icmp eq ptr %59, null
  br i1 %tobool25.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %61, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %1, align 4
  %conv = zext i8 %63 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %57, i32 noundef %cond, i32 noundef %conv, i32 noundef %xogc.0) #10
  br label %do.end34

do.end34:                                         ; preds = %cond.end, %do.body.do.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #6
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 14, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #6
  %75 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 131071, ptr %52, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %1, align 4
  %conv.i20 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i20, ptr %msg.i19, align 4
  %79 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i21, align 2
  %80 = ptrtoint ptr %buf4.i23 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf, ptr %buf4.i23, align 4
  %81 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adap.i, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i19, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i27) #6
  %83 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 131071, ptr %53, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %1, align 4
  %conv.i28 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i28, ptr %msg.i27, align 4
  %87 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags.i29, align 2
  %88 = ptrtoint ptr %buf4.i31 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf, ptr %buf4.i31, align 4
  %89 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adap.i, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i27, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i27) #6
  %91 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %buf, align 1
  %93 = and i8 %92, 1
  %and45 = zext i8 %93 to i32
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool47.not = icmp eq i32 %94, 0
  br i1 %tobool47.not, label %do.end34.do.end74_crit_edge, label %do.end52

do.end34.do.end74_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

do.end52:                                         ; preds = %do.end34
  %95 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name, align 4
  %97 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adap.i, align 4
  %tobool58.not = icmp eq ptr %98, null
  br i1 %tobool58.not, label %do.end52.cond.end64_crit_edge, label %cond.true59

do.end52.cond.end64_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end64

cond.true59:                                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %nr.i34 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr.i34, align 4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true59, %do.end52.cond.end64_crit_edge
  %cond65 = phi i32 [ %100, %cond.true59 ], [ -1, %do.end52.cond.end64_crit_edge ]
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %1, align 4
  %conv68 = zext i8 %102 to i32
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %96, i32 noundef %cond65, i32 noundef %conv68, i32 noundef %and45) #10
  br label %do.end74

do.end74:                                         ; preds = %cond.end64, %do.end34.do.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp.not = icmp eq i8 %93, 0
  br i1 %cmp.not, label %if.end77, label %do.end74.do.end152_crit_edge

do.end74.do.end152_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end152

if.end77:                                         ; preds = %do.end74
  %dec78 = add nsw i32 %xogc.0, -1
  %103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool80.not = icmp eq i32 %103, 0
  br i1 %tobool80.not, label %if.end77.do.end108_crit_edge, label %do.end85

if.end77.do.end108_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

do.end85:                                         ; preds = %if.end77
  %104 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name, align 4
  %106 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adap.i, align 4
  %tobool91.not = icmp eq ptr %107, null
  br i1 %tobool91.not, label %do.end85.cond.end97_crit_edge, label %cond.true92

do.end85.cond.end97_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end97

cond.true92:                                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i35 = getelementptr inbounds %struct.i2c_adapter, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %nr.i35 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nr.i35, align 4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true92, %do.end85.cond.end97_crit_edge
  %cond98 = phi i32 [ %109, %cond.true92 ], [ -1, %do.end85.cond.end97_crit_edge ]
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %1, align 4
  %conv101 = zext i8 %111 to i32
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %105, i32 noundef %cond98, i32 noundef %conv101, i32 noundef %dec78) #10
  br label %do.end108

do.end108:                                        ; preds = %cond.end97, %if.end77.do.end108_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec78)
  %cmp109 = icmp eq i32 %dec78, 3
  br i1 %cmp109, label %do.end108.do.end152_crit_edge, label %if.end112

do.end108.do.end152_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end152

if.end112:                                        ; preds = %do.end108
  %112 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 7, ptr %buf, align 1
  %113 = trunc i32 %xogc.0 to i8
  %conv114 = add i8 %113, -121
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv114, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #6
  %115 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 196607, ptr %54, align 4
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %1, align 4
  %conv.i37 = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i37, ptr %msg.i36, align 4
  %119 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i38, align 2
  %120 = ptrtoint ptr %buf4.i40 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %buf, ptr %buf4.i40, align 4
  %121 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %adap.i, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %msg.i36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #6
  %123 = add i32 %call.i42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %124 = icmp ult i32 %123, 2
  br i1 %124, label %if.end112.do.body.backedge_crit_edge, label %do.end126

if.end112.do.body.backedge_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %cond.end138, %if.end112.do.body.backedge_crit_edge
  br label %do.body

do.end126:                                        ; preds = %if.end112
  %125 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name, align 4
  %127 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adap.i, align 4
  %tobool132.not = icmp eq ptr %128, null
  br i1 %tobool132.not, label %do.end126.cond.end138_crit_edge, label %cond.true133

do.end126.cond.end138_crit_edge:                  ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end138

cond.true133:                                     ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i45 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %nr.i45 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr.i45, align 4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true133, %do.end126.cond.end138_crit_edge
  %cond139 = phi i32 [ %130, %cond.true133 ], [ -1, %do.end126.cond.end138_crit_edge ]
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %1, align 4
  %conv142 = zext i8 %132 to i32
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %126, i32 noundef %cond139, i32 noundef %conv142, i32 noundef %call.i42) #10
  br label %do.body.backedge

do.end152:                                        ; preds = %do.end108.do.end152_crit_edge, %do.end74.do.end152_crit_edge
  %xogc153 = getelementptr inbounds %struct.microtune_priv, ptr %1, i32 0, i32 1
  %133 = ptrtoint ptr %xogc153 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %xogc.0, ptr %xogc153, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %134 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2032_tuner_ops, i32 220)
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microtune_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2032_set_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge19
  ]

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %std.i = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %5 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %std.i, align 8
  %and.i = and i64 %6, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body15.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  br i1 %tobool16.not.i, label %do.body.i.mt2032_set_radio_freq.exit_crit_edge, label %do.end.i

do.body.i.mt2032_set_radio_freq.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_set_radio_freq.exit

do.end.i:                                         ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %conv.i = zext i8 %15 to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %9, i32 noundef %cond.i, i32 noundef %conv.i) #10
  br label %mt2032_set_radio_freq.exit

do.body15.i:                                      ; preds = %sw.bb
  br i1 %tobool16.not.i, label %do.body15.i.mt2032_set_radio_freq.exit_crit_edge, label %do.end21.i

do.body15.i.mt2032_set_radio_freq.exit_crit_edge: ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_set_radio_freq.exit

do.end21.i:                                       ; preds = %do.body15.i
  %name24.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name24.i, align 4
  %adap26.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adap26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap26.i, align 4
  %tobool27.not.i = icmp eq ptr %19, null
  br i1 %tobool27.not.i, label %do.end21.i.cond.end33.i_crit_edge, label %cond.true28.i

do.end21.i.cond.end33.i_crit_edge:                ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end33.i

cond.true28.i:                                    ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i2.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i2.i, align 4
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.true28.i, %do.end21.i.cond.end33.i_crit_edge
  %cond34.i = phi i32 [ %21, %cond.true28.i ], [ -1, %do.end21.i.cond.end33.i_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 4
  %conv37.i = zext i8 %23 to i32
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %17, i32 noundef %cond34.i, i32 noundef %conv37.i) #10
  br label %mt2032_set_radio_freq.exit

mt2032_set_radio_freq.exit:                       ; preds = %cond.end33.i, %do.body15.i.mt2032_set_radio_freq.exit_crit_edge, %cond.end.i, %do.body.i.mt2032_set_radio_freq.exit_crit_edge
  %if2.0.i = phi i32 [ 41300000, %cond.end.i ], [ 41300000, %do.body.i.mt2032_set_radio_freq.exit_crit_edge ], [ 33300000, %cond.end33.i ], [ 33300000, %do.body15.i.mt2032_set_radio_freq.exit_crit_edge ]
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params, align 8
  %mul.i = mul i32 %25, 125
  %div1.i = lshr i32 %mul.i, 1
  tail call fastcc void @mt2032_set_if_freq(ptr noundef %fe, i32 noundef %div1.i, i32 noundef 1085000000, i32 noundef %if2.0.i, i32 noundef %if2.0.i, i32 noundef %if2.0.i) #6
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %params, align 8
  %mul = mul i32 %27, 125
  %div14 = lshr i32 %mul, 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge19
  %std.i15 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %28 = ptrtoint ptr %std.i15 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %std.i15, align 8
  %and.i16 = and i64 %29, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i16)
  %tobool.not.i17 = icmp eq i64 %and.i16, 0
  %..i = select i1 %tobool.not.i17, i32 38900000, i32 45750000
  %.1.i = select i1 %tobool.not.i17, i32 32900000, i32 40750000
  %.2.i = select i1 %tobool.not.i17, i32 39900000, i32 46750000
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %params, align 8
  %mul.i18 = mul i32 %31, 62500
  tail call fastcc void @mt2032_set_if_freq(ptr noundef %fe, i32 noundef %mul.i18, i32 noundef 1090000000, i32 noundef %..i, i32 noundef %.1.i, i32 noundef %.2.i) #6
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %params, align 8
  %mul5 = mul i32 %33, 62500
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %mt2032_set_radio_freq.exit
  %mul5.sink = phi i32 [ %mul5, %sw.bb2 ], [ %div14, %mt2032_set_radio_freq.exit ]
  %frequency6 = getelementptr inbounds %struct.microtune_priv, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %frequency6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul5.sink, ptr %frequency6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @microtune_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.microtune_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2032_set_if_freq(ptr nocapture noundef readonly %fe, i32 noundef %rfin, i32 noundef %if1, i32 noundef %if2, i32 noundef %from, i32 noundef %to) unnamed_addr #0 align 64 {
entry:
  %msg.i310 = alloca %struct.i2c_msg, align 4
  %msg.i300 = alloca %struct.i2c_msg, align 4
  %msg.i291 = alloca %struct.i2c_msg, align 4
  %msg.i112.i = alloca %struct.i2c_msg, align 4
  %msg.i104.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i268 = alloca %struct.i2c_msg, align 4
  %msg.i259 = alloca %struct.i2c_msg, align 4
  %msg.i251 = alloca %struct.i2c_msg, align 4
  %msg.i241 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 11
  %11 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 12
  %12 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 13
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %13 = call ptr @memset(ptr %buf, i32 255, i32 21)
  %14 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner_priv, align 4
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %15, align 4
  %conv = zext i8 %24 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %18, i32 noundef %cond, i32 noundef %conv, i32 noundef %rfin, i32 noundef %if1, i32 noundef %if2, i32 noundef %from, i32 noundef %to) #10
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131071, ptr %26, align 4
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %15, align 4
  %conv.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 1
  %33 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i241) #6
  %35 = getelementptr inbounds i8, ptr %msg.i241, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1441791, ptr %35, align 4
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %15, align 4
  %conv.i242 = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i241 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i242, ptr %msg.i241, align 4
  %flags.i243 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i243 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags.i243, align 2
  %buf4.i245 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 3
  %41 = ptrtoint ptr %buf4.i245 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf, ptr %buf4.i245, align 4
  %42 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adap.i, align 4
  %call.i247 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i241, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i241) #6
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %buf, align 1
  %xogc = getelementptr inbounds %struct.microtune_priv, ptr %15, i32 0, i32 1
  %45 = ptrtoint ptr %xogc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xogc, align 4
  %47 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner_priv, align 4
  %add.i = add i32 %if1, %rfin
  %div.i = udiv i32 %add.i, 1000
  %mul.i = shl nuw nsw i32 %div.i, 1
  %add2.i = add nuw nsw i32 %mul.i, 5250
  %div5.i = udiv i32 %add2.i, 10500
  %div6.i = udiv i32 %add2.i, 84000
  %mul7.neg.i = mul nsw i32 %div6.i, -8
  %sub.i = add nsw i32 %mul7.neg.i, %div5.i
  %49 = load i32, ptr @optimize_vco, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.else24.i, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 800999999, i32 %rfin)
  %cmp.i248 = icmp ugt i32 %rfin, 800999999
  br i1 %cmp.i248, label %if.then.i.if.end41.i_crit_edge, label %if.else.i

if.then.i.if.end41.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 630999999, i32 %rfin)
  %cmp12.i = icmp ugt i32 %rfin, 630999999
  br i1 %cmp12.i, label %if.else.i.if.end41.i_crit_edge, label %if.else14.i

if.else.i.if.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 440999999, i32 %rfin)
  %cmp15.i = icmp ugt i32 %rfin, 440999999
  br i1 %cmp15.i, label %if.else14.i.if.end41.i_crit_edge, label %if.else17.i

if.else14.i.if.end41.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else17.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 280999999, i32 %rfin)
  %cmp18.i = icmp ugt i32 %rfin, 280999999
  %..i = select i1 %cmp18.i, i32 3, i32 4
  br label %if.end41.i

if.else24.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 700999999, i32 %rfin)
  %cmp25.i = icmp ugt i32 %rfin, 700999999
  br i1 %cmp25.i, label %if.else24.i.if.end41.i_crit_edge, label %if.else27.i

if.else24.i.if.end41.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 527999999, i32 %rfin)
  %cmp28.i = icmp ugt i32 %rfin, 527999999
  br i1 %cmp28.i, label %if.else27.i.if.end41.i_crit_edge, label %if.else30.i

if.else27.i.if.end41.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 359999999, i32 %rfin)
  %cmp31.i = icmp ugt i32 %rfin, 359999999
  br i1 %cmp31.i, label %if.else30.i.if.end41.i_crit_edge, label %if.else33.i

if.else30.i.if.end41.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else33.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 201999999, i32 %rfin)
  %cmp34.i = icmp ugt i32 %rfin, 201999999
  %.276.i = select i1 %cmp34.i, i32 3, i32 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else33.i, %if.else30.i.if.end41.i_crit_edge, %if.else27.i.if.end41.i_crit_edge, %if.else24.i.if.end41.i_crit_edge, %if.else17.i, %if.else14.i.if.end41.i_crit_edge, %if.else.i.if.end41.i_crit_edge, %if.then.i.if.end41.i_crit_edge
  %sel.0.i = phi i32 [ 0, %if.then.i.if.end41.i_crit_edge ], [ 1, %if.else.i.if.end41.i_crit_edge ], [ 2, %if.else14.i.if.end41.i_crit_edge ], [ %..i, %if.else17.i ], [ 0, %if.else24.i.if.end41.i_crit_edge ], [ 1, %if.else27.i.if.end41.i_crit_edge ], [ 2, %if.else30.i.if.end41.i_crit_edge ], [ %.276.i, %if.else33.i ]
  %mul44.i = mul nuw i32 %div5.i, 5250000
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool45.not.i = icmp eq i32 %50, 0
  br i1 %tobool45.not.i, label %if.end41.i.do.end59.i_crit_edge, label %do.end.i

if.end41.i.do.end59.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

do.end.i:                                         ; preds = %if.end41.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i, align 4
  %adap.i249 = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %adap.i249 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap.i249, align 4
  %tobool50.not.i = icmp eq ptr %54, null
  br i1 %tobool50.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %56, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %48, align 4
  %conv.i250 = zext i8 %58 to i32
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %52, i32 noundef %cond.i, i32 noundef %conv.i250, i32 noundef %rfin, i32 noundef %div5.i, i32 noundef %div6.i, i32 noundef %sub.i, i32 noundef %sel.0.i, i32 noundef %mul44.i) #10
  br label %do.end59.i

do.end59.i:                                       ; preds = %cond.end.i, %if.end41.i.do.end59.i_crit_edge
  %59 = add i32 %if2, %rfin
  %sub61.i = sub i32 %mul44.i, %59
  %div62.i = udiv i32 %sub61.i, 5250000
  %div63.i = udiv i32 %sub61.i, 42000000
  %mul64.neg.i = mul nsw i32 %div63.i, -8
  %sub65.i = add nsw i32 %mul64.neg.i, %div62.i
  %div66.i = udiv i32 %sub61.i, 1000
  %rem.i = urem i32 %div66.i, 5250
  %mul68.i = mul nuw nsw i32 %rem.i, 3780
  %div70.i = udiv i32 %mul68.i, 5250
  %mul73.i = mul nuw i32 %div62.i, 5250000
  %mul75.i = mul nuw nsw i32 %div70.i, 5250
  %div76.i = udiv i32 %mul75.i, 3780
  %mul77.i = mul nuw nsw i32 %div76.i, 1000
  %add78.i = add i32 %mul77.i, %mul73.i
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool80.not.i = icmp eq i32 %60, 0
  br i1 %tobool80.not.i, label %do.end59.i.do.end107.i_crit_edge, label %do.end85.i

do.end59.i.do.end107.i_crit_edge:                 ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107.i

do.end85.i:                                       ; preds = %do.end59.i
  %name88.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 3
  %61 = ptrtoint ptr %name88.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name88.i, align 4
  %adap90.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 1
  %63 = ptrtoint ptr %adap90.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adap90.i, align 4
  %tobool91.not.i = icmp eq ptr %64, null
  br i1 %tobool91.not.i, label %do.end85.i.cond.end97.i_crit_edge, label %cond.true92.i

do.end85.i.cond.end97.i_crit_edge:                ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end97.i

cond.true92.i:                                    ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i281.i = getelementptr inbounds %struct.i2c_adapter, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %nr.i281.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr.i281.i, align 4
  br label %cond.end97.i

cond.end97.i:                                     ; preds = %cond.true92.i, %do.end85.i.cond.end97.i_crit_edge
  %cond98.i = phi i32 [ %66, %cond.true92.i ], [ -1, %do.end85.i.cond.end97.i_crit_edge ]
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %48, align 4
  %conv101.i = zext i8 %68 to i32
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %62, i32 noundef %cond98.i, i32 noundef %conv101.i, i32 noundef %rfin, i32 noundef %div62.i, i32 noundef %div63.i, i32 noundef %sub65.i, i32 noundef %div70.i, i32 noundef %add78.i) #10
  br label %do.end107.i

do.end107.i:                                      ; preds = %cond.end97.i, %do.end59.i.do.end107.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp108.i = icmp ugt i32 %sub.i, 7
  %69 = add i32 %add.i, -2055375000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1344000000, i32 %69)
  %70 = icmp ult i32 %69, -1344000000
  %71 = or i1 %70, %cmp108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub65.i)
  %cmp116.i = icmp ugt i32 %sub65.i, 7
  %or.cond278.i = select i1 %71, i1 true, i1 %cmp116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 714000000, i32 %sub61.i)
  %cmp119.i = icmp ult i32 %sub61.i, 714000000
  %or.cond279.i = select i1 %or.cond278.i, i1 true, i1 %cmp119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1301999999, i32 %sub61.i)
  %cmp122.i = icmp ugt i32 %sub61.i, 1301999999
  %or.cond280.i = select i1 %or.cond279.i, i1 true, i1 %cmp122.i
  br i1 %or.cond280.i, label %do.end129.i, label %if.end151.i

do.end129.i:                                      ; preds = %do.end107.i
  %name132.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 3
  %72 = ptrtoint ptr %name132.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name132.i, align 4
  %adap134.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %48, i32 0, i32 1
  %74 = ptrtoint ptr %adap134.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adap134.i, align 4
  %tobool135.not.i = icmp eq ptr %75, null
  br i1 %tobool135.not.i, label %do.end129.i.mt2032_compute_freq.exit.thread_crit_edge, label %cond.true136.i

do.end129.i.mt2032_compute_freq.exit.thread_crit_edge: ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_compute_freq.exit.thread

cond.true136.i:                                   ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i282.i = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %nr.i282.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr.i282.i, align 4
  br label %mt2032_compute_freq.exit.thread

mt2032_compute_freq.exit.thread:                  ; preds = %cond.true136.i, %do.end129.i.mt2032_compute_freq.exit.thread_crit_edge
  %cond142.i = phi i32 [ %77, %cond.true136.i ], [ -1, %do.end129.i.mt2032_compute_freq.exit.thread_crit_edge ]
  %78 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %48, align 4
  %conv145.i = zext i8 %79 to i32
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %73, i32 noundef %cond142.i, i32 noundef %conv145.i, i32 noundef %sub.i, i32 noundef %div6.i, i32 noundef %sub65.i, i32 noundef %div63.i) #10
  br label %cleanup

if.end151.i:                                      ; preds = %do.end107.i
  %80 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tuner_priv, align 4
  %div.i.i = sdiv i32 %mul44.i, 1000
  %div2.i.i = sdiv i32 %from, 1000
  %div3.i.i = sdiv i32 %to, 1000
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %if.end151.i.do.end15.i.i_crit_edge, label %do.end.i.i

if.end151.i.do.end15.i.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.i.i

do.end.i.i:                                       ; preds = %if.end151.i
  %name.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %81, i32 0, i32 3
  %83 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adap.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %86, null
  br i1 %tobool7.not.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr.i.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %88, %cond.true.i.i ], [ -1, %do.end.i.i.cond.end.i.i_crit_edge ]
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %81, align 4
  %conv.i.i = zext i8 %90 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %84, i32 noundef %cond.i.i, i32 noundef %conv.i.i, i32 noundef %div.i.i, i32 noundef %div66.i, i32 noundef %div2.i.i, i32 noundef %div3.i.i) #10
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %cond.end.i.i, %if.end151.i.do.end15.i.i_crit_edge
  %sub17.i.i = sub nsw i32 %div.i.i, %div66.i
  %name29.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %81, i32 0, i32 3
  %adap31.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %81, i32 0, i32 1
  %sub84.i.i = sub nsw i32 %div66.i, %div3.i.i
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.end89.i.i.do.body16.i.i_crit_edge, %do.end15.i.i
  %n1.0.i.i = phi i32 [ 1, %do.end15.i.i ], [ %inc.i.i, %do.end89.i.i.do.body16.i.i_crit_edge ]
  %sub.i.i = sub nsw i32 0, %n1.0.i.i
  %mul.i.i = mul nsw i32 %n1.0.i.i, %sub17.i.i
  br label %do.body18.i.i

do.body18.i.i:                                    ; preds = %do.cond83.i.i.do.body18.i.i_crit_edge, %do.body16.i.i
  %n2.0.i.i = phi i32 [ %sub.i.i, %do.body16.i.i ], [ %dec.i.i, %do.cond83.i.i.do.body18.i.i_crit_edge ]
  %f.0.i.i = phi i32 [ %mul.i.i, %do.body16.i.i ], [ %sub19.i.i, %do.cond83.i.i.do.body18.i.i_crit_edge ]
  %dec.i.i = add i32 %n2.0.i.i, -1
  %sub19.i.i = sub i32 %f.0.i.i, %div66.i
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool21.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool21.not.i.i, label %do.body18.i.i.do.end48.i.i_crit_edge, label %do.end26.i.i

do.body18.i.i.do.end48.i.i_crit_edge:             ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i.i

do.end26.i.i:                                     ; preds = %do.body18.i.i
  %92 = ptrtoint ptr %name29.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name29.i.i, align 4
  %94 = ptrtoint ptr %adap31.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adap31.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %95, null
  br i1 %tobool32.not.i.i, label %do.end26.i.i.cond.end38.i.i_crit_edge, label %cond.true33.i.i

do.end26.i.i.cond.end38.i.i_crit_edge:            ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38.i.i

cond.true33.i.i:                                  ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i2.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %nr.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nr.i2.i.i, align 4
  br label %cond.end38.i.i

cond.end38.i.i:                                   ; preds = %cond.true33.i.i, %do.end26.i.i.cond.end38.i.i_crit_edge
  %cond39.i.i = phi i32 [ %97, %cond.true33.i.i ], [ -1, %do.end26.i.i.cond.end38.i.i_crit_edge ]
  %98 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %81, align 4
  %conv42.i.i = zext i8 %99 to i32
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %93, i32 noundef %cond39.i.i, i32 noundef %conv42.i.i, i32 noundef %n1.0.i.i, i32 noundef %dec.i.i, i32 noundef %sub19.i.i) #10
  br label %do.end48.i.i

do.end48.i.i:                                     ; preds = %cond.end38.i.i, %do.body18.i.i.do.end48.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i.i, i32 %div2.i.i)
  %cmp.i.i = icmp sgt i32 %sub19.i.i, %div2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i.i, i32 %div3.i.i)
  %cmp50.i.i = icmp slt i32 %sub19.i.i, %div3.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp50.i.i
  br i1 %or.cond.i.i, label %do.body53.i.i, label %do.end48.i.i.do.cond83.i.i_crit_edge

do.end48.i.i.do.cond83.i.i_crit_edge:             ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond83.i.i

do.body53.i.i:                                    ; preds = %do.end48.i.i
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool54.not.i.i = icmp eq i32 %100, 0
  br i1 %tobool54.not.i.i, label %do.body53.i.i.do.cond83.i.i_crit_edge, label %do.end59.i.i

do.body53.i.i.do.cond83.i.i_crit_edge:            ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond83.i.i

do.end59.i.i:                                     ; preds = %do.body53.i.i
  %101 = ptrtoint ptr %name29.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name29.i.i, align 4
  %103 = ptrtoint ptr %adap31.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adap31.i.i, align 4
  %tobool65.not.i.i = icmp eq ptr %104, null
  br i1 %tobool65.not.i.i, label %do.end59.i.i.cond.end71.i.i_crit_edge, label %cond.true66.i.i

do.end59.i.i.cond.end71.i.i_crit_edge:            ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end71.i.i

cond.true66.i.i:                                  ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i3.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %nr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr.i3.i.i, align 4
  br label %cond.end71.i.i

cond.end71.i.i:                                   ; preds = %cond.true66.i.i, %do.end59.i.i.cond.end71.i.i_crit_edge
  %cond72.i.i = phi i32 [ %106, %cond.true66.i.i ], [ -1, %do.end59.i.i.cond.end71.i.i_crit_edge ]
  %107 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %81, align 4
  %conv75.i.i = zext i8 %108 to i32
  %call76.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %102, i32 noundef %cond72.i.i, i32 noundef %conv75.i.i, i32 noundef %n1.0.i.i) #10
  br label %do.cond83.i.i

do.cond83.i.i:                                    ; preds = %cond.end71.i.i, %do.body53.i.i.do.cond83.i.i_crit_edge, %do.end48.i.i.do.cond83.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19.i.i, i32 %sub84.i.i)
  %cmp85.i.i = icmp sgt i32 %sub19.i.i, %sub84.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %dec.i.i)
  %cmp87.i.i = icmp sgt i32 %dec.i.i, -5
  %or.cond1.i.i = select i1 %cmp85.i.i, i1 true, i1 %cmp87.i.i
  br i1 %or.cond1.i.i, label %do.cond83.i.i.do.body18.i.i_crit_edge, label %do.end89.i.i

do.cond83.i.i.do.body18.i.i_crit_edge:            ; preds = %do.cond83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18.i.i

do.end89.i.i:                                     ; preds = %do.cond83.i.i
  %inc.i.i = add nuw nsw i32 %n1.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %if.end23, label %do.end89.i.i.do.body16.i.i_crit_edge

do.end89.i.i.do.body16.i.i_crit_edge:             ; preds = %do.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i.i

if.end23:                                         ; preds = %do.end89.i.i
  %109 = trunc i32 %div6.i to i8
  %conv154.i = add i8 %109, -1
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv154.i, ptr %0, align 1
  %shl.i = shl nuw nsw i32 %sel.0.i, 4
  %or.i = or i32 %shl.i, %sub.i
  %conv155.i = trunc i32 %or.i to i8
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv155.i, ptr %1, align 1
  %112 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -122, ptr %2, align 1
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 15, ptr %3, align 1
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 31, ptr %4, align 1
  %sub160.i = add nuw nsw i32 %div63.i, 255
  %shl161.i = shl nsw i32 %sub65.i, 5
  %or162.i = or i32 %shl161.i, %sub160.i
  %conv163.i = trunc i32 %or162.i to i8
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv163.i, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %rfin)
  %cmp165.i = icmp ugt i32 %rfin, 400000000
  %spec.select.i = select i1 %cmp165.i, i8 -28, i8 -12
  %116 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %spec.select.i, ptr %6, align 1
  %117 = trunc i32 %46 to i8
  %conv173.i = add i8 %117, 8
  %118 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv173.i, ptr %7, align 1
  %119 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -61, ptr %8, align 1
  %120 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 78, ptr %9, align 1
  %121 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -20, ptr %10, align 1
  %conv178.i = trunc i32 %div70.i to i8
  %122 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv178.i, ptr %11, align 1
  %shr.i = lshr i32 %div70.i, 8
  %123 = trunc i32 %shr.i to i8
  %conv181.i = or i8 %123, -128
  %124 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv181.i, ptr %12, align 1
  %125 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i251) #6
  %126 = getelementptr inbounds i8, ptr %msg.i251, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 327679, ptr %126, align 4
  %128 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %15, align 4
  %conv.i252 = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i251 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i252, ptr %msg.i251, align 4
  %flags.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i253 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i253, align 2
  %buf4.i255 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i251, i32 0, i32 3
  %132 = ptrtoint ptr %buf4.i255 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf, ptr %buf4.i255, align 4
  %133 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adap.i, align 4
  %call.i257 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i251, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i251) #6
  %135 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 5, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i259) #6
  %136 = getelementptr inbounds i8, ptr %msg.i259, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 327679, ptr %136, align 4
  %138 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %15, align 4
  %conv.i260 = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i259 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i260, ptr %msg.i259, align 4
  %flags.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i261 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i261, align 2
  %buf4.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259, i32 0, i32 3
  %142 = ptrtoint ptr %buf4.i263 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %4, ptr %buf4.i263, align 4
  %143 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap.i, align 4
  %call.i265 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i259, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i259) #6
  %145 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 11, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i268) #6
  %146 = getelementptr inbounds i8, ptr %msg.i268, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 262143, ptr %146, align 4
  %148 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %15, align 4
  %conv.i269 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i268 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i269, ptr %msg.i268, align 4
  %flags.i270 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i270 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i270, align 2
  %buf4.i272 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 3
  %152 = ptrtoint ptr %buf4.i272 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %10, ptr %buf4.i272, align 4
  %153 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adap.i, align 4
  %call.i274 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i268, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i268) #6
  %155 = and i32 %call.i274, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %if.end23.if.end66_crit_edge, label %do.end44

if.end23.if.end66_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end44:                                         ; preds = %if.end23
  %name47 = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 3
  %157 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name47, align 4
  %159 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %adap.i, align 4
  %tobool50.not = icmp eq ptr %160, null
  br i1 %tobool50.not, label %do.end44.cond.end56_crit_edge, label %cond.true51

do.end44.cond.end56_crit_edge:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end56

cond.true51:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i277 = getelementptr inbounds %struct.i2c_adapter, ptr %160, i32 0, i32 11
  %161 = ptrtoint ptr %nr.i277 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nr.i277, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.true51, %do.end44.cond.end56_crit_edge
  %cond57 = phi i32 [ %162, %cond.true51 ], [ -1, %do.end44.cond.end56_crit_edge ]
  %163 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %15, align 4
  %conv60 = zext i8 %164 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %158, i32 noundef %cond57, i32 noundef %conv60, i32 noundef %call.i274) #10
  br label %if.end66

if.end66:                                         ; preds = %cond.end56, %if.end23.if.end66_crit_edge
  %165 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %166 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %167 = getelementptr inbounds i8, ptr %msg.i104.i, i32 4
  %flags.i106.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i, i32 0, i32 1
  %buf4.i108.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sel.0.i)
  %cmp32.i = icmp eq i32 %sel.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sel.0.i)
  %cmp37.i = icmp ult i32 %sel.0.i, 4
  %168 = getelementptr inbounds i8, ptr %msg.i112.i, i32 4
  %flags.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 0, i32 1
  %buf4.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 0, i32 3
  %name87 = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 3
  %169 = getelementptr inbounds i8, ptr %msg.i291, i32 4
  %flags.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i291, i32 0, i32 1
  %buf4.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i291, i32 0, i32 3
  %170 = getelementptr inbounds i8, ptr %msg.i300, i32 4
  %flags.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 1
  %buf4.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end106.for.body_crit_edge, %if.end66
  %lint_try.0328 = phi i32 [ 0, %if.end66 ], [ %inc, %do.end106.for.body_crit_edge ]
  %call69 = call fastcc i32 @mt2032_check_lo_lock(ptr noundef %fe)
  %171 = load i32, ptr @optimize_vco, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool70.not = icmp eq i32 %171, 0
  br i1 %tobool70.not, label %for.body.if.end73_crit_edge, label %if.then71

for.body.if.end73_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %for.body
  %172 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %174 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %165, align 1, !annotation !207
  %175 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 15, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %176 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 131071, ptr %166, align 4
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %173, align 4
  %conv.i.i279 = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.i.i279, ptr %msg.i.i, align 4
  %180 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i.i, align 2
  %181 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i280 = getelementptr inbounds %struct.tuner_i2c_props, ptr %173, i32 0, i32 1
  %182 = ptrtoint ptr %adap.i.i280 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %adap.i.i280, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104.i) #6
  %184 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 131071, ptr %167, align 4
  %185 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %173, align 4
  %conv.i105.i = zext i8 %186 to i16
  %187 = ptrtoint ptr %msg.i104.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv.i105.i, ptr %msg.i104.i, align 4
  %188 = ptrtoint ptr %flags.i106.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %flags.i106.i, align 2
  %189 = ptrtoint ptr %buf4.i108.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %buf.i, ptr %buf4.i108.i, align 4
  %190 = ptrtoint ptr %adap.i.i280 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %adap.i.i280, align 4
  %call.i110.i = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %msg.i104.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104.i) #6
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i281 = icmp eq i32 %192, 0
  br i1 %tobool.not.i281, label %if.then71.do.end19.i_crit_edge, label %do.end.i283

if.then71.do.end19.i_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

do.end.i283:                                      ; preds = %if.then71
  %name.i282 = getelementptr inbounds %struct.tuner_i2c_props, ptr %173, i32 0, i32 3
  %193 = ptrtoint ptr %name.i282 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %name.i282, align 4
  %195 = ptrtoint ptr %adap.i.i280 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %adap.i.i280, align 4
  %tobool8.not.i = icmp eq ptr %196, null
  br i1 %tobool8.not.i, label %do.end.i283.cond.end.i288_crit_edge, label %cond.true.i285

do.end.i283.cond.end.i288_crit_edge:              ; preds = %do.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i288

cond.true.i285:                                   ; preds = %do.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i284 = getelementptr inbounds %struct.i2c_adapter, ptr %196, i32 0, i32 11
  %197 = ptrtoint ptr %nr.i.i284 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nr.i.i284, align 4
  br label %cond.end.i288

cond.end.i288:                                    ; preds = %cond.true.i285, %do.end.i283.cond.end.i288_crit_edge
  %cond.i286 = phi i32 [ %198, %cond.true.i285 ], [ -1, %do.end.i283.cond.end.i288_crit_edge ]
  %199 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %173, align 4
  %conv.i287 = zext i8 %200 to i32
  %201 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %buf.i, align 1
  %conv14.i = zext i8 %202 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %194, i32 noundef %cond.i286, i32 noundef %conv.i287, i32 noundef %conv14.i) #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %cond.end.i288, %if.then71.do.end19.i_crit_edge
  %203 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %buf.i, align 1
  %trunc.i = trunc i8 %204 to i3
  %205 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.94)
  switch i3 %trunc.i, label %if.else36.i [
    i3 0, label %do.end19.i.mt2032_optimize_vco.exit_crit_edge
    i3 1, label %do.end19.i.mt2032_optimize_vco.exit_crit_edge330
    i3 2, label %if.then31.i
  ]

do.end19.i.mt2032_optimize_vco.exit_crit_edge330: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_optimize_vco.exit

do.end19.i.mt2032_optimize_vco.exit_crit_edge:    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_optimize_vco.exit

if.then31.i:                                      ; preds = %do.end19.i
  br i1 %cmp32.i, label %if.then31.i.mt2032_optimize_vco.exit_crit_edge, label %if.then31.i.do.body43.i_crit_edge

if.then31.i.do.body43.i_crit_edge:                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

if.then31.i.mt2032_optimize_vco.exit_crit_edge:   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_optimize_vco.exit

if.else36.i:                                      ; preds = %do.end19.i
  br i1 %cmp37.i, label %if.else36.i.do.body43.i_crit_edge, label %if.else36.i.mt2032_optimize_vco.exit_crit_edge

if.else36.i.mt2032_optimize_vco.exit_crit_edge:   ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2032_optimize_vco.exit

if.else36.i.do.body43.i_crit_edge:                ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43.i

do.body43.i:                                      ; preds = %if.else36.i.do.body43.i_crit_edge, %if.then31.i.do.body43.i_crit_edge
  %.sink.i = phi i32 [ -1, %if.then31.i.do.body43.i_crit_edge ], [ 1, %if.else36.i.do.body43.i_crit_edge ]
  %dec.i = add nsw i32 %.sink.i, %sel.0.i
  %206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool44.not.i = icmp eq i32 %206, 0
  br i1 %tobool44.not.i, label %do.body43.i.do.end71.i_crit_edge, label %do.end49.i

do.body43.i.do.end71.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71.i

do.end49.i:                                       ; preds = %do.body43.i
  %name52.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %173, i32 0, i32 3
  %207 = ptrtoint ptr %name52.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name52.i, align 4
  %209 = ptrtoint ptr %adap.i.i280 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %adap.i.i280, align 4
  %tobool55.not.i = icmp eq ptr %210, null
  br i1 %tobool55.not.i, label %do.end49.i.cond.end61.i_crit_edge, label %cond.true56.i

do.end49.i.cond.end61.i_crit_edge:                ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end61.i

cond.true56.i:                                    ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i111.i = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 11
  %211 = ptrtoint ptr %nr.i111.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nr.i111.i, align 4
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true56.i, %do.end49.i.cond.end61.i_crit_edge
  %cond62.i = phi i32 [ %212, %cond.true56.i ], [ -1, %do.end49.i.cond.end61.i_crit_edge ]
  %213 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %173, align 4
  %conv65.i = zext i8 %214 to i32
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %208, i32 noundef %cond62.i, i32 noundef %conv65.i, i32 noundef %dec.i) #10
  br label %do.end71.i

do.end71.i:                                       ; preds = %cond.end61.i, %do.body43.i.do.end71.i_crit_edge
  %215 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 15, ptr %buf.i, align 1
  %conv73.i = trunc i32 %dec.i to i8
  %216 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv73.i, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i112.i) #6
  %217 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 196607, ptr %168, align 4
  %218 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %173, align 4
  %conv.i113.i = zext i8 %219 to i16
  %220 = ptrtoint ptr %msg.i112.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv.i113.i, ptr %msg.i112.i, align 4
  %221 = ptrtoint ptr %flags.i114.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %flags.i114.i, align 2
  %222 = ptrtoint ptr %buf4.i116.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %buf.i, ptr %buf4.i116.i, align 4
  %223 = ptrtoint ptr %adap.i.i280 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %adap.i.i280, align 4
  %call.i118.i = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %msg.i112.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i112.i) #6
  %call78.i = call fastcc i32 @mt2032_check_lo_lock(ptr noundef %fe) #6
  br label %mt2032_optimize_vco.exit

mt2032_optimize_vco.exit:                         ; preds = %do.end71.i, %if.else36.i.mt2032_optimize_vco.exit_crit_edge, %if.then31.i.mt2032_optimize_vco.exit_crit_edge, %do.end19.i.mt2032_optimize_vco.exit_crit_edge, %do.end19.i.mt2032_optimize_vco.exit_crit_edge330
  %retval.0.i289 = phi i32 [ %call78.i, %do.end71.i ], [ %call69, %do.end19.i.mt2032_optimize_vco.exit_crit_edge ], [ %call69, %do.end19.i.mt2032_optimize_vco.exit_crit_edge330 ], [ %call69, %if.then31.i.mt2032_optimize_vco.exit_crit_edge ], [ %call69, %if.else36.i.mt2032_optimize_vco.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end73

if.end73:                                         ; preds = %mt2032_optimize_vco.exit, %for.body.if.end73_crit_edge
  %lock.1 = phi i32 [ %retval.0.i289, %mt2032_optimize_vco.exit ], [ %call69, %for.body.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lock.1)
  %cmp74 = icmp eq i32 %lock.1, 6
  br i1 %cmp74, label %if.end73.if.end151_crit_edge, label %do.body78

if.end73.if.end151_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

do.body78:                                        ; preds = %if.end73
  %225 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool79.not = icmp eq i32 %225, 0
  br i1 %tobool79.not, label %do.body78.do.end106_crit_edge, label %do.end84

do.body78.do.end106_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106

do.end84:                                         ; preds = %do.body78
  %226 = ptrtoint ptr %name87 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %name87, align 4
  %228 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %adap.i, align 4
  %tobool90.not = icmp eq ptr %229, null
  br i1 %tobool90.not, label %do.end84.cond.end96_crit_edge, label %cond.true91

do.end84.cond.end96_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end96

cond.true91:                                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i290 = getelementptr inbounds %struct.i2c_adapter, ptr %229, i32 0, i32 11
  %230 = ptrtoint ptr %nr.i290 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %nr.i290, align 4
  br label %cond.end96

cond.end96:                                       ; preds = %cond.true91, %do.end84.cond.end96_crit_edge
  %cond97 = phi i32 [ %231, %cond.true91 ], [ -1, %do.end84.cond.end96_crit_edge ]
  %232 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %15, align 4
  %conv100 = zext i8 %233 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %227, i32 noundef %cond97, i32 noundef %conv100) #10
  br label %do.end106

do.end106:                                        ; preds = %cond.end96, %do.body78.do.end106_crit_edge
  %234 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 7, ptr %buf, align 1
  %235 = ptrtoint ptr %xogc to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %xogc, align 4
  %237 = trunc i32 %236 to i8
  %conv109 = add i8 %237, -120
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv109, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i291) #6
  %239 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 196607, ptr %169, align 4
  %240 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %15, align 4
  %conv.i292 = zext i8 %241 to i16
  %242 = ptrtoint ptr %msg.i291 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv.i292, ptr %msg.i291, align 4
  %243 = ptrtoint ptr %flags.i293 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %flags.i293, align 2
  %244 = ptrtoint ptr %buf4.i295 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %buf, ptr %buf4.i295, align 4
  %245 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %adap.i, align 4
  %call.i297 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %msg.i291, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i291) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %247(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %248(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %249(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %250(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %251(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %252(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %254(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %255(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %256(i32 noundef 214748000) #6
  %257 = ptrtoint ptr %xogc to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %xogc, align 4
  %259 = trunc i32 %258 to i8
  %conv117 = add i8 %259, 8
  %260 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv117, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i300) #6
  %261 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 196607, ptr %170, align 4
  %262 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %15, align 4
  %conv.i301 = zext i8 %263 to i16
  %264 = ptrtoint ptr %msg.i300 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv.i301, ptr %msg.i300, align 4
  %265 = ptrtoint ptr %flags.i302 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %flags.i302, align 2
  %266 = ptrtoint ptr %buf4.i304 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %buf, ptr %buf4.i304, align 4
  %267 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %adap.i, align 4
  %call.i306 = call i32 @i2c_transfer(ptr noundef %268, ptr noundef nonnull %msg.i300, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i300) #6
  %inc = add nuw nsw i32 %lint_try.0328, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %do.end129, label %do.end106.for.body_crit_edge

do.end106.for.body_crit_edge:                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end129:                                        ; preds = %do.end106
  %269 = ptrtoint ptr %name87 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %name87, align 4
  %271 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %adap.i, align 4
  %tobool135.not = icmp eq ptr %272, null
  br i1 %tobool135.not, label %do.end129.cond.end141_crit_edge, label %cond.true136

do.end129.cond.end141_crit_edge:                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end141

cond.true136:                                     ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i309 = getelementptr inbounds %struct.i2c_adapter, ptr %272, i32 0, i32 11
  %273 = ptrtoint ptr %nr.i309 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nr.i309, align 4
  br label %cond.end141

cond.end141:                                      ; preds = %cond.true136, %do.end129.cond.end141_crit_edge
  %cond142 = phi i32 [ %274, %cond.true136 ], [ -1, %do.end129.cond.end141_crit_edge ]
  %275 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %15, align 4
  %conv145 = zext i8 %276 to i32
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %270, i32 noundef %cond142, i32 noundef %conv145) #10
  br label %if.end151

if.end151:                                        ; preds = %cond.end141, %if.end73.if.end151_crit_edge
  %277 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 2, ptr %buf, align 1
  %278 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 32, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i310) #6
  %279 = getelementptr inbounds i8, ptr %msg.i310, i32 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 196607, ptr %279, align 4
  %281 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %15, align 4
  %conv.i311 = zext i8 %282 to i16
  %283 = ptrtoint ptr %msg.i310 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 %conv.i311, ptr %msg.i310, align 4
  %flags.i312 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310, i32 0, i32 1
  %284 = ptrtoint ptr %flags.i312 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 0, ptr %flags.i312, align 2
  %buf4.i314 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310, i32 0, i32 3
  %285 = ptrtoint ptr %buf4.i314 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %buf, ptr %buf4.i314, align 4
  %286 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %adap.i, align 4
  %call.i316 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %msg.i310, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i310) #6
  %288 = add i32 %call.i316, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %288)
  %289 = icmp ult i32 %288, 2
  br i1 %289, label %if.end151.cleanup_crit_edge, label %do.end164

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end164:                                        ; preds = %if.end151
  %290 = ptrtoint ptr %name87 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %name87, align 4
  %292 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %adap.i, align 4
  %tobool170.not = icmp eq ptr %293, null
  br i1 %tobool170.not, label %do.end164.cond.end176_crit_edge, label %cond.true171

do.end164.cond.end176_crit_edge:                  ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end176

cond.true171:                                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i319 = getelementptr inbounds %struct.i2c_adapter, ptr %293, i32 0, i32 11
  %294 = ptrtoint ptr %nr.i319 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %nr.i319, align 4
  br label %cond.end176

cond.end176:                                      ; preds = %cond.true171, %do.end164.cond.end176_crit_edge
  %cond177 = phi i32 [ %295, %cond.true171 ], [ -1, %do.end164.cond.end176_crit_edge ]
  %296 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %15, align 4
  %conv180 = zext i8 %297 to i32
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %291, i32 noundef %cond177, i32 noundef %conv180, i32 noundef %call.i316) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end176, %if.end151.cleanup_crit_edge, %mt2032_compute_freq.exit.thread
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2032_check_lo_lock(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i69 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !207
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %msg.i69, i32 4
  %flags.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 1
  %buf4.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 3
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end56.for.body_crit_edge, %entry
  %try.077 = phi i32 [ 0, %entry ], [ %inc, %do.end56.for.body_crit_edge ]
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %4, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf4.i, align 4
  %13 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69) #6
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131071, ptr %5, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %conv.i70 = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i70, ptr %msg.i69, align 4
  %19 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags.i71, align 2
  %20 = ptrtoint ptr %buf4.i73 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf4.i73, align 4
  %21 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap.i, align 4
  %call.i75 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i69, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69) #6
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %for.body.do.end19_crit_edge, label %do.end

for.body.do.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end:                                           ; preds = %for.body
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap.i, align 4
  %tobool8.not = icmp eq ptr %27, null
  br i1 %tobool8.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 4
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %conv14 = zext i8 %33 to i32
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %25, i32 noundef %cond, i32 noundef %conv, i32 noundef %conv14) #10
  br label %do.end19

do.end19:                                         ; preds = %cond.end, %for.body.do.end19_crit_edge
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 1
  %36 = and i8 %35, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %36)
  %cmp22 = icmp eq i8 %36, 6
  br i1 %cmp22, label %do.end19.for.end_crit_edge, label %do.body26

do.end19.for.end_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body26:                                        ; preds = %do.end19
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not = icmp eq i32 %37, 0
  br i1 %tobool27.not, label %do.body26.do.end56_crit_edge, label %do.end32

do.body26.do.end56_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end32:                                         ; preds = %do.body26
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %40 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap.i, align 4
  %tobool38.not = icmp eq ptr %41, null
  br i1 %tobool38.not, label %do.end32.cond.end44_crit_edge, label %cond.true39

do.end32.cond.end44_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end44

cond.true39:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i76 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %nr.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr.i76, align 4
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true39, %do.end32.cond.end44_crit_edge
  %cond45 = phi i32 [ %43, %cond.true39 ], [ -1, %do.end32.cond.end44_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %1, align 4
  %conv48 = zext i8 %45 to i32
  %conv50 = zext i8 %35 to i32
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %39, i32 noundef %cond45, i32 noundef %conv48, i32 noundef %conv50) #10
  br label %do.end56

do.end56:                                         ; preds = %cond.end44, %do.body26.do.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %try.077, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end.split.loop.exit78, label %do.end56.for.body_crit_edge

do.end56.for.body_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.split.loop.exit78:                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %and.le = zext i8 %36 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit78, %do.end19.for.end_crit_edge
  %lock.1 = phi i32 [ %and.le, %for.end.split.loop.exit78 ], [ 6, %do.end19.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %lock.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2050_set_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %msg.i.i.i15 = alloca %struct.i2c_msg, align 4
  %buf.i.i16 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge40
  ]

entry.sw.bb2_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %std.i = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %5 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %std.i, align 8
  %and.i = and i64 %6, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body15.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  br i1 %tobool16.not.i, label %do.body.i.if.end44.i_crit_edge, label %do.end.i

do.body.i.if.end44.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end.i:                                         ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %conv.i = zext i8 %15 to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %9, i32 noundef %cond.i, i32 noundef %conv.i) #10
  br label %if.end44.i

do.body15.i:                                      ; preds = %sw.bb
  br i1 %tobool16.not.i, label %do.body15.i.if.end44.i_crit_edge, label %do.end21.i

do.body15.i.if.end44.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end21.i:                                       ; preds = %do.body15.i
  %name24.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name24.i, align 4
  %adap26.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adap26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap26.i, align 4
  %tobool27.not.i = icmp eq ptr %19, null
  br i1 %tobool27.not.i, label %do.end21.i.cond.end33.i_crit_edge, label %cond.true28.i

do.end21.i.cond.end33.i_crit_edge:                ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end33.i

cond.true28.i:                                    ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i2.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i2.i, align 4
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.true28.i, %do.end21.i.cond.end33.i_crit_edge
  %cond34.i = phi i32 [ %21, %cond.true28.i ], [ -1, %do.end21.i.cond.end33.i_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 4
  %conv37.i = zext i8 %23 to i32
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %17, i32 noundef %cond34.i, i32 noundef %conv37.i) #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %cond.end33.i, %do.body15.i.if.end44.i_crit_edge, %cond.end.i, %do.body.i.if.end44.i_crit_edge
  %if2.0.i = phi i32 [ 41300000, %cond.end.i ], [ 41300000, %do.body.i.if.end44.i_crit_edge ], [ 33300000, %cond.end33.i ], [ 33300000, %do.body15.i.if.end44.i_crit_edge ]
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params, align 8
  %mul.i = mul i32 %25, 125
  %div1.i = lshr i32 %mul.i, 1
  tail call fastcc void @mt2050_set_if_freq(ptr noundef %fe, i32 noundef %div1.i, i32 noundef %if2.0.i) #6
  %26 = load i32, ptr @radio_antenna, align 4
  %conv45.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %buf.i.i, align 1
  %conv.i.i = and i32 %26, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv45.i)
  %tobool.not.i.i = icmp eq i8 %conv45.i, 0
  %conv1.i.i = select i1 %tobool.not.i.i, i8 16, i8 17
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i.i, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %28, align 4
  %conv.i.i.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i.i, ptr %buf4.i.i.i, align 4
  %adap.i.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %28, i32 0, i32 1
  %39 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool3.not.i.i, label %if.end44.i.mt2050_set_radio_freq.exit_crit_edge, label %do.end.i.i

if.end44.i.mt2050_set_radio_freq.exit_crit_edge:  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2050_set_radio_freq.exit

do.end.i.i:                                       ; preds = %if.end44.i
  %name.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %28, i32 0, i32 3
  %42 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i.i, align 4
  %44 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adap.i.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %45, null
  br i1 %tobool8.not.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr.i.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond12.i.i = phi i32 [ %47, %cond.true.i.i ], [ -1, %do.end.i.i.cond.end.i.i_crit_edge ]
  %48 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %28, align 4
  %conv14.i.i = zext i8 %49 to i32
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %43, i32 noundef %cond12.i.i, i32 noundef %conv14.i.i, i32 noundef %conv.i.i) #10
  br label %mt2050_set_radio_freq.exit

mt2050_set_radio_freq.exit:                       ; preds = %cond.end.i.i, %if.end44.i.mt2050_set_radio_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %50 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %params, align 8
  %mul = mul i32 %51, 125
  %div14 = lshr i32 %mul, 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge40
  %std.i17 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %52 = ptrtoint ptr %std.i17 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %std.i17, align 8
  %and.i18 = and i64 %53, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i18)
  %tobool.not.i19 = icmp eq i64 %and.i18, 0
  %..i = select i1 %tobool.not.i19, i32 38900000, i32 45750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  %if2.1.i = select i1 %cmp.i, i32 36150000, i32 %..i
  %54 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %params, align 8
  %mul.i20 = mul i32 %55, 62500
  tail call fastcc void @mt2050_set_if_freq(ptr noundef %fe, i32 noundef %mul.i20, i32 noundef %if2.1.i) #6
  %56 = load i32, ptr @tv_antenna, align 4
  %conv.i21 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i16) #6
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i.i16, i32 0, i32 1
  %60 = ptrtoint ptr %buf.i.i16 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 6, ptr %buf.i.i16, align 1
  %conv.i.i22 = and i32 %56, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i21)
  %tobool.not.i.i23 = icmp eq i8 %conv.i21, 0
  %conv1.i.i24 = select i1 %tobool.not.i.i23, i8 16, i8 17
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv1.i.i24, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i15) #6
  %62 = getelementptr inbounds i8, ptr %msg.i.i.i15, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 196607, ptr %62, align 4
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %58, align 4
  %conv.i.i.i25 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i.i.i15 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i.i25, ptr %msg.i.i.i15, align 4
  %flags.i.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i15, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i.i26 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i.i26, align 2
  %buf4.i.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i15, i32 0, i32 3
  %68 = ptrtoint ptr %buf4.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i.i16, ptr %buf4.i.i.i27, align 4
  %adap.i.i.i28 = getelementptr inbounds %struct.tuner_i2c_props, ptr %58, i32 0, i32 1
  %69 = ptrtoint ptr %adap.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adap.i.i.i28, align 4
  %call.i.i.i29 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i.i15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i15) #6
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool3.not.i.i30 = icmp eq i32 %71, 0
  br i1 %tobool3.not.i.i30, label %sw.bb2.mt2050_set_tv_freq.exit_crit_edge, label %do.end.i.i33

sw.bb2.mt2050_set_tv_freq.exit_crit_edge:         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2050_set_tv_freq.exit

do.end.i.i33:                                     ; preds = %sw.bb2
  %name.i.i31 = getelementptr inbounds %struct.tuner_i2c_props, ptr %58, i32 0, i32 3
  %72 = ptrtoint ptr %name.i.i31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name.i.i31, align 4
  %74 = ptrtoint ptr %adap.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adap.i.i.i28, align 4
  %tobool8.not.i.i32 = icmp eq ptr %75, null
  br i1 %tobool8.not.i.i32, label %do.end.i.i33.cond.end.i.i39_crit_edge, label %cond.true.i.i35

do.end.i.i33.cond.end.i.i39_crit_edge:            ; preds = %do.end.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i39

cond.true.i.i35:                                  ; preds = %do.end.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %nr.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr.i.i.i34, align 4
  br label %cond.end.i.i39

cond.end.i.i39:                                   ; preds = %cond.true.i.i35, %do.end.i.i33.cond.end.i.i39_crit_edge
  %cond12.i.i36 = phi i32 [ %77, %cond.true.i.i35 ], [ -1, %do.end.i.i33.cond.end.i.i39_crit_edge ]
  %78 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %58, align 4
  %conv14.i.i37 = zext i8 %79 to i32
  %call16.i.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %73, i32 noundef %cond12.i.i36, i32 noundef %conv14.i.i37, i32 noundef %conv.i.i22) #10
  br label %mt2050_set_tv_freq.exit

mt2050_set_tv_freq.exit:                          ; preds = %cond.end.i.i39, %sw.bb2.mt2050_set_tv_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i16) #6
  %80 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %params, align 8
  %mul5 = mul i32 %81, 62500
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %mt2050_set_tv_freq.exit, %mt2050_set_radio_freq.exit
  %mul5.sink = phi i32 [ %mul5, %mt2050_set_tv_freq.exit ], [ %div14, %mt2050_set_radio_freq.exit ]
  %frequency6 = getelementptr inbounds %struct.microtune_priv, ptr %1, i32 0, i32 2
  %82 = ptrtoint ptr %frequency6 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul5.sink, ptr %frequency6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2050_set_if_freq(ptr nocapture noundef readonly %fe, i32 noundef %freq, i32 noundef %if2) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %conv = zext i8 %15 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %9, i32 noundef %cond, i32 noundef %conv, i32 noundef %freq, i32 noundef 1218000000, i32 noundef %if2) #10
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %add = add i32 %freq, 1218000000
  %16 = urem i32 %add, 1000000
  %mul = sub i32 %add, %16
  %17 = add i32 %if2, %freq
  %sub13 = sub i32 %mul, %17
  %18 = urem i32 %sub13, 50000
  %mul15 = sub i32 %sub13, %18
  %div16 = udiv i32 %mul, 4000000
  %div17 = udiv i32 %mul15, 4000000
  %mul18.neg = mul i32 %div16, 1069741824
  %sub19 = add i32 %mul18.neg, %mul
  %mul20.neg = mul i32 %div17, -4000000
  %sub21 = add i32 %mul20.neg, %mul15
  %mul22 = shl i32 %sub19, 2
  %div23 = udiv i32 %mul22, 4000000
  %div24 = udiv i32 %sub21, 1000
  %mul25 = shl i32 %div24, 12
  %div26 = udiv i32 %mul25, 4000
  %div27 = udiv i32 %mul, 48000000
  %sub28 = add nsw i32 %div27, -1
  %mul30.neg = mul nsw i32 %div27, -12
  %sub31 = add nsw i32 %mul30.neg, %div16
  %div32 = udiv i32 %mul15, 32000000
  %sub33 = add nsw i32 %div32, -1
  %mul35.neg = mul nsw i32 %div32, -8
  %sub36 = add nsw i32 %mul35.neg, %div17
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp sgt i32 %19, 1
  br i1 %cmp, label %do.end45, label %do.end12.if.end97_crit_edge

do.end12.if.end97_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end45:                                         ; preds = %do.end12
  %name48 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name48, align 4
  %adap50 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %adap50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap50, align 4
  %tobool51.not = icmp eq ptr %23, null
  br i1 %tobool51.not, label %do.end45.cond.end57_crit_edge, label %cond.true52

do.end45.cond.end57_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end57

cond.true52:                                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i252 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i252 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i252, align 4
  br label %cond.end57

cond.end57:                                       ; preds = %cond.true52, %do.end45.cond.end57_crit_edge
  %cond58 = phi i32 [ %25, %cond.true52 ], [ -1, %do.end45.cond.end57_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 4
  %conv61 = zext i8 %27 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %21, i32 noundef %cond58, i32 noundef %conv61, i32 noundef %div16, i32 noundef %div17) #10
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool69.not = icmp eq i32 %28, 0
  br i1 %tobool69.not, label %cond.end57.if.end97_crit_edge, label %do.end74

cond.end57.if.end97_crit_edge:                    ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end74:                                         ; preds = %cond.end57
  %29 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name48, align 4
  %31 = ptrtoint ptr %adap50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap50, align 4
  %tobool80.not = icmp eq ptr %32, null
  br i1 %tobool80.not, label %do.end74.cond.end86_crit_edge, label %cond.true81

do.end74.cond.end86_crit_edge:                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end86

cond.true81:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i253 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i253 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i253, align 4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.true81, %do.end74.cond.end86_crit_edge
  %cond87 = phi i32 [ %34, %cond.true81 ], [ -1, %do.end74.cond.end86_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 4
  %conv90 = zext i8 %36 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %30, i32 noundef %cond87, i32 noundef %conv90, i32 noundef %div23, i32 noundef %div26, i32 noundef %sub28, i32 noundef %sub31, i32 noundef %sub33, i32 noundef %sub36) #10
  br label %if.end97

if.end97:                                         ; preds = %cond.end86, %cond.end57.if.end97_crit_edge, %do.end12.if.end97_crit_edge
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %buf, align 1
  %mul98 = shl nsw i32 %sub31, 2
  %add99 = add nsw i32 %div23, %mul98
  %conv100 = trunc i32 %add99 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 275000000, i32 %freq)
  %cmp102 = icmp ult i32 %freq, 275000000
  %conv107 = or i8 %conv100, -128
  %storemerge251 = select i1 %cmp102, i8 %conv107, i8 %conv100
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %storemerge251, ptr %2, align 1
  %conv110 = trunc i32 %sub28 to i8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv110, ptr %3, align 1
  %mul112 = shl nsw i32 %sub36, 5
  %div113 = udiv i32 %mul25, 1024000
  %add114 = add nsw i32 %div113, %mul112
  %conv115 = trunc i32 %add114 to i8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv115, ptr %4, align 1
  %conv120 = trunc i32 %div26 to i8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv120, ptr %5, align 1
  %conv122 = trunc i32 %sub33 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul25)
  %42 = icmp eq i32 %mul25, 0
  %conv130 = or i8 %conv122, 64
  %storemerge = select i1 %42, i8 %conv122, i8 %conv130
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge, ptr %6, align 1
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp133 = icmp sgt i32 %44, 1
  br i1 %cmp133, label %do.end142, label %if.end97.if.end165_crit_edge

if.end97.if.end165_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

do.end142:                                        ; preds = %if.end97
  %name145 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %name145 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name145, align 4
  %adap147 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %adap147 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adap147, align 4
  %tobool148.not = icmp eq ptr %48, null
  br i1 %tobool148.not, label %do.end142.cond.end154_crit_edge, label %cond.true149

do.end142.cond.end154_crit_edge:                  ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end154

cond.true149:                                     ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i254 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %nr.i254 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr.i254, align 4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true149, %do.end142.cond.end154_crit_edge
  %cond155 = phi i32 [ %50, %cond.true149 ], [ -1, %do.end142.cond.end154_crit_edge ]
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %1, align 4
  %conv158 = zext i8 %52 to i32
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %46, i32 noundef %cond155, i32 noundef %conv158, i32 noundef 6, ptr noundef nonnull %buf) #10
  br label %if.end165

if.end165:                                        ; preds = %cond.end154, %if.end97.if.end165_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %53 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 458751, ptr %53, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %1, align 4
  %conv.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  %62 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call.i, label %do.end176 [
    i32 6, label %if.end165.if.end198_crit_edge
    i32 1, label %if.end165.if.end198_crit_edge257
  ]

if.end165.if.end198_crit_edge257:                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.end165.if.end198_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

do.end176:                                        ; preds = %if.end165
  %name179 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %name179 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name179, align 4
  %65 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adap.i, align 4
  %tobool182.not = icmp eq ptr %66, null
  br i1 %tobool182.not, label %do.end176.cond.end188_crit_edge, label %cond.true183

do.end176.cond.end188_crit_edge:                  ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end188

cond.true183:                                     ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i255 = getelementptr inbounds %struct.i2c_adapter, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %nr.i255 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr.i255, align 4
  br label %cond.end188

cond.end188:                                      ; preds = %cond.true183, %do.end176.cond.end188_crit_edge
  %cond189 = phi i32 [ %68, %cond.true183 ], [ -1, %do.end176.cond.end188_crit_edge ]
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %1, align 4
  %conv192 = zext i8 %70 to i32
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %64, i32 noundef %cond189, i32 noundef %conv192, i32 noundef %call.i) #10
  br label %if.end198

if.end198:                                        ; preds = %cond.end188, %if.end165.if.end198_crit_edge, %if.end165.if.end198_crit_edge257
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !47, !49, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mt20xx.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mt20xx.c", i32 17, i32 1}
!5 = !{ptr @__param_optimize_vco, !6, !"__param_optimize_vco", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mt20xx.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_optimize_vcotype292, !6, !"__UNIQUE_ID_optimize_vcotype292", i1 false, i1 false}
!8 = !{ptr @__param_tv_antenna, !9, !"__param_tv_antenna", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/mt20xx.c", i32 25, i32 1}
!10 = !{ptr @__UNIQUE_ID_tv_antennatype293, !9, !"__UNIQUE_ID_tv_antennatype293", i1 false, i1 false}
!11 = !{ptr @__param_radio_antenna, !12, !"__param_radio_antenna", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/mt20xx.c", i32 28, i32 1}
!13 = !{ptr @__UNIQUE_ID_radio_antennatype294, !12, !"__UNIQUE_ID_radio_antennatype294", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/mt20xx.c", i32 606, i32 25}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/mt20xx.c", i32 612, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/mt20xx.c", i32 617, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @microtune_attach._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @microtune_attach._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/mt20xx.c", i32 620, i32 2}
!26 = !{ptr @microtune_attach._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @microtune_attach._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/mt20xx.c", i32 635, i32 3}
!30 = !{ptr @microtune_attach._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @microtune_attach._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/mt20xx.c", i32 642, i32 2}
!34 = !{ptr @microtune_attach._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @microtune_attach._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_microtune_attach, !37, !"__ksymtab_microtune_attach", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/mt20xx.c", i32 646, i32 1}
!38 = !{ptr @__UNIQUE_ID_description295, !39, !"__UNIQUE_ID_description295", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/mt20xx.c", i32 648, i32 1}
!40 = !{ptr @__UNIQUE_ID_author296, !41, !"__UNIQUE_ID_author296", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/mt20xx.c", i32 649, i32 1}
!42 = !{ptr @__UNIQUE_ID_file297, !43, !"__UNIQUE_ID_file297", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/mt20xx.c", i32 650, i32 1}
!44 = !{ptr @__UNIQUE_ID_license298, !43, !"__UNIQUE_ID_license298", i1 false, i1 false}
!45 = !{ptr @debug, !46, !"debug", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/mt20xx.c", i32 15, i32 12}
!47 = !{ptr @radio_antenna, !48, !"radio_antenna", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/mt20xx.c", i32 27, i32 21}
!49 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!50 = !{ptr @__param_str_optimize_vco, !6, !"__param_str_optimize_vco", i1 false, i1 false}
!51 = !{ptr @optimize_vco, !52, !"optimize_vco", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/mt20xx.c", i32 21, i32 21}
!53 = !{ptr @__param_str_tv_antenna, !9, !"__param_str_tv_antenna", i1 false, i1 false}
!54 = !{ptr @tv_antenna, !55, !"tv_antenna", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/mt20xx.c", i32 24, i32 21}
!56 = !{ptr @__param_str_radio_antenna, !12, !"__param_str_radio_antenna", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/mt20xx.c", i32 39, i32 15}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/mt20xx.c", i32 38, i32 15}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/mt20xx.c", i32 40, i32 15}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/mt20xx.c", i32 41, i32 15}
!65 = !{ptr @microtune_part, !66, !"microtune_part", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/mt20xx.c", i32 37, i32 14}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/mt20xx.c", i32 400, i32 3}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mt2032_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mt2032_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/mt20xx.c", i32 406, i32 3}
!74 = !{ptr @mt2032_init._entry.20, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mt2032_init._entry_ptr.22, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mt2032_init._entry.23, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/mt20xx.c", i32 410, i32 3}
!78 = !{ptr @mt2032_init._entry_ptr.24, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/mt20xx.c", i32 419, i32 4}
!81 = !{ptr @mt2032_init._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mt2032_init._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mt2032_tuner_ops, !84, !"mt2032_tuner_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/mt20xx.c", i32 365, i32 35}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/mt20xx.c", i32 330, i32 3}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mt2032_set_radio_freq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mt2032_set_radio_freq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/mt20xx.c", i32 333, i32 3}
!92 = !{ptr @mt2032_set_radio_freq._entry.30, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mt2032_set_radio_freq._entry_ptr.32, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/mt20xx.c", i32 249, i32 2}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mt2032_set_if_freq._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mt2032_set_if_freq._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/mt20xx.c", i32 269, i32 3}
!101 = !{ptr @mt2032_set_if_freq._entry.35, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mt2032_set_if_freq._entry_ptr.37, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/tuners/mt20xx.c", i32 279, i32 3}
!105 = !{ptr @mt2032_set_if_freq._entry.38, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mt2032_set_if_freq._entry_ptr.40, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/tuners/mt20xx.c", i32 289, i32 3}
!109 = !{ptr @mt2032_set_if_freq._entry.41, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mt2032_set_if_freq._entry_ptr.43, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @mt2032_set_if_freq._entry.44, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/mt20xx.c", i32 295, i32 3}
!113 = !{ptr @mt2032_set_if_freq._entry_ptr.45, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/mt20xx.c", i32 138, i32 2}
!116 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mt2032_compute_freq._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mt2032_compute_freq._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/tuners/mt20xx.c", i32 148, i32 2}
!121 = !{ptr @mt2032_compute_freq._entry.48, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mt2032_compute_freq._entry_ptr.50, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/tuners/mt20xx.c", i32 153, i32 3}
!125 = !{ptr @mt2032_compute_freq._entry.51, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @mt2032_compute_freq._entry_ptr.53, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/tuners/mt20xx.c", i32 78, i32 2}
!129 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mt2032_spurcheck._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @mt2032_spurcheck._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/tuners/mt20xx.c", i32 87, i32 3}
!134 = !{ptr @mt2032_spurcheck._entry.56, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mt2032_spurcheck._entry_ptr.58, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/tuners/mt20xx.c", i32 90, i32 4}
!138 = !{ptr @mt2032_spurcheck._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mt2032_spurcheck._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/mt20xx.c", i32 192, i32 3}
!142 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mt2032_check_lo_lock._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mt2032_check_lo_lock._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/tuners/mt20xx.c", i32 198, i32 3}
!147 = !{ptr @mt2032_check_lo_lock._entry.64, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mt2032_check_lo_lock._entry_ptr.66, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/tuners/mt20xx.c", i32 213, i32 2}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mt2032_optimize_vco._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mt2032_optimize_vco._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/mt20xx.c", i32 231, i32 2}
!156 = !{ptr @mt2032_optimize_vco._entry.69, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mt2032_optimize_vco._entry_ptr.71, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/mt20xx.c", i32 583, i32 2}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mt2050_init._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mt2050_init._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @mt2050_tuner_ops, !164, !"mt2050_tuner_ops", i1 false, i1 false}
!164 = !{!"../drivers/media/tuners/mt20xx.c", i32 560, i32 35}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/tuners/mt20xx.c", i32 526, i32 3}
!167 = !{ptr @mt2050_set_radio_freq._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @mt2050_set_radio_freq._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @mt2050_set_radio_freq._entry.75, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/tuners/mt20xx.c", i32 529, i32 3}
!171 = !{ptr @mt2050_set_radio_freq._entry_ptr.76, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/tuners/mt20xx.c", i32 447, i32 2}
!174 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mt2050_set_if_freq._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mt2050_set_if_freq._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/tuners/mt20xx.c", i32 474, i32 3}
!179 = !{ptr @mt2050_set_if_freq._entry.79, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @mt2050_set_if_freq._entry_ptr.81, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/tuners/mt20xx.c", i32 475, i32 3}
!183 = !{ptr @mt2050_set_if_freq._entry.82, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @mt2050_set_if_freq._entry_ptr.84, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/tuners/mt20xx.c", i32 490, i32 3}
!187 = !{ptr @mt2050_set_if_freq._entry.85, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @mt2050_set_if_freq._entry_ptr.87, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/tuners/mt20xx.c", i32 494, i32 3}
!191 = !{ptr @mt2050_set_if_freq._entry.88, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @mt2050_set_if_freq._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/tuners/mt20xx.c", i32 436, i32 2}
!195 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mt2050_set_antenna._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @mt2050_set_antenna._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
