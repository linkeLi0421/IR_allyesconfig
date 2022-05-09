; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda9887.c_pt.bc'
source_filename = "../drivers/media/tuners/tda9887.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tda9887_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda9887_attach\09\09\09\09"
module asm "\09.long\09__crc_tda9887_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda9887_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda9887_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda9887_attach:\09\09\09\09\09"
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
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tvnorm = type { i64, ptr, i8, i8, i8 }
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
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda9887_priv = type { %struct.tuner_i2c_props, %struct.list_head, [4 x i8], i32, i32, i32, i64, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [14 x i8] c"tda9887.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"tda9887.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [49 x i8] c"tda9887.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_port1 = internal constant [14 x i8] c"tda9887.port1\00", align 1
@port1 = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_port1 = internal constant %struct.kernel_param { ptr @__param_str_port1, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @port1 } }, section "__param", align 4
@__UNIQUE_ID_port1type294 = internal constant [27 x i8] c"tda9887.parmtype=port1:int\00", section ".modinfo", align 1
@__param_str_port2 = internal constant [14 x i8] c"tda9887.port2\00", align 1
@port2 = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_port2 = internal constant %struct.kernel_param { ptr @__param_str_port2, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @port2 } }, section "__param", align 4
@__UNIQUE_ID_port2type295 = internal constant [27 x i8] c"tda9887.parmtype=port2:int\00", section ".modinfo", align 1
@__param_str_qss = internal constant [12 x i8] c"tda9887.qss\00", align 1
@qss = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_qss = internal constant %struct.kernel_param { ptr @__param_str_qss, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @qss } }, section "__param", align 4
@__UNIQUE_ID_qsstype296 = internal constant [25 x i8] c"tda9887.parmtype=qss:int\00", section ".modinfo", align 1
@__param_str_adjust = internal constant [15 x i8] c"tda9887.adjust\00", align 1
@adjust = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_adjust = internal constant %struct.kernel_param { ptr @__param_str_adjust, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @adjust } }, section "__param", align 4
@__UNIQUE_ID_adjusttype297 = internal constant [28 x i8] c"tda9887.parmtype=adjust:int\00", section ".modinfo", align 1
@tda9887_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tda9887_list_mutex, i64 52), ptr getelementptr (i8, ptr @tda9887_list_mutex, i64 52) }, ptr @tda9887_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@tda9887_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9887_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tda9887.c\00", [33 x i8] zeroinitializer }, align 32
@tda9887_attach._entry_ptr = internal global ptr @tda9887_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9887\00", [24 x i8] zeroinitializer }, align 32
@tda9887_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@tda9887_attach._entry_ptr.6 = internal global ptr @tda9887_attach._entry.4, section ".printk_index", align 4
@tda9887_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: tda988[5/6/7] found\0A\00", [61 x i8] zeroinitializer }, align 32
@tda9887_attach._entry_ptr.9 = internal global ptr @tda9887_attach._entry.7, section ".printk_index", align 4
@tda9887_ops = internal constant { %struct.analog_demod_ops, [60 x i8] } { %struct.analog_demod_ops { %struct.analog_demod_info { ptr @.str.3 }, ptr @tda9887_set_params, ptr null, ptr @tda9887_get_afc, ptr @tda9887_tuner_status, ptr @tda9887_standby, ptr @tda9887_release, ptr null, ptr @tda9887_set_config }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_tda9887_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda9887_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda9887_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda9887_attach to i32), ptr @__kstrtab_tda9887_attach, ptr @__kstrtabns_tda9887_attach }, section "___ksymtab_gpl+tda9887_attach", align 4
@__UNIQUE_ID_file298 = internal constant [42 x i8] c"tda9887.file=drivers/media/tuners/tda9887\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"tda9887.license=GPL\00", section ".modinfo", align 1
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tda9887_list_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda9887_list_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda9887_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s %d-%04x: writing: b=0x%02x c=0x%02x e=0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda9887_configure\00", [46 x i8] zeroinitializer }, align 32
@tda9887_configure._entry_ptr = internal global ptr @tda9887_configure._entry, section ".printk_index", align 4
@tda9887_configure._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 4)\0A\00", [43 x i8] zeroinitializer }, align 32
@tda9887_configure._entry_ptr.16 = internal global ptr @tda9887_configure._entry.14, section ".printk_index", align 4
@radio_mono = internal constant { %struct.tvnorm, [16 x i8] } { %struct.tvnorm { i64 0, ptr @.str.22, i8 12, i8 48, i8 61 }, [16 x i8] zeroinitializer }, align 32
@radio_stereo = internal constant { %struct.tvnorm, [16 x i8] } { %struct.tvnorm { i64 0, ptr @.str.23, i8 12, i8 -112, i8 61 }, [16 x i8] zeroinitializer }, align 32
@tvnorms = internal constant { [10 x %struct.tvnorm], [32 x i8] } { [10 x %struct.tvnorm] [%struct.tvnorm { i64 527, ptr @.str.24, i8 20, i8 112, i8 73 }, %struct.tvnorm { i64 16, ptr @.str.25, i8 20, i8 112, i8 74 }, %struct.tvnorm { i64 224, ptr @.str.26, i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 1280, ptr @.str.27, i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 851968, ptr @.str.28, i8 20, i8 16, i8 9 }, %struct.tvnorm { i64 4194304, ptr @.str.29, i8 4, i8 16, i8 75 }, %struct.tvnorm { i64 8388608, ptr @.str.30, i8 -124, i8 16, i8 83 }, %struct.tvnorm { i64 3276800, ptr @.str.31, i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 36864, ptr @.str.32, i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 8192, ptr @.str.33, i8 20, i8 112, i8 64 }], [32 x i8] zeroinitializer }, align 32
@tda9887_set_tvnorm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d-%04x: Unsupported tvnorm entry - audio muted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda9887_set_tvnorm\00", [45 x i8] zeroinitializer }, align 32
@tda9887_set_tvnorm._entry_ptr = internal global ptr @tda9887_set_tvnorm._entry, section ".printk_index", align 4
@tda9887_set_tvnorm._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s %d-%04x: configure for: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@tda9887_set_tvnorm._entry_ptr.21 = internal global ptr @tda9887_set_tvnorm._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Radio Mono\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio Stereo\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAL-BGHN\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-I\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-DK\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAL-M/Nc\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SECAM-BGH\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SECAM-L\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-L'\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-DK\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NTSC-M-JP\00", [22 x i8] zeroinitializer }, align 32
@dump_write_message.sound = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.35], [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM/TV\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FM/radio\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FM/TV\00", [26 x i8] zeroinitializer }, align 32
@dump_write_message.adjust = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-16\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-15\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-14\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-13\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-12\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-11\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-10\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-9\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-8\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-7\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-6\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-5\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-4\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-3\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-2\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-1\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+1\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+2\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+3\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+4\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+5\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+6\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+7\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+8\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+9\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+10\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+11\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+12\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+13\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+14\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+15\00", [28 x i8] zeroinitializer }, align 32
@dump_write_message.deemph = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.69, ptr @.str.69, ptr @.str.70, ptr @.str.71], [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"75\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"50\00", [29 x i8] zeroinitializer }, align 32
@dump_write_message.carrier = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4.5 MHz\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.5 MHz\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6.0 MHz\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"6.5 MHz / AM\00", [19 x i8] zeroinitializer }, align 32
@dump_write_message.vif = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"58.75 MHz\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"45.75 MHz\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"38.9 MHz\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"38.0 MHz\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"33.9 MHz\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"33.4 MHz\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"45.75 MHz + pin13\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"38.9 MHz + pin13\00", [47 x i8] zeroinitializer }, align 32
@dump_write_message.rif = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.85, ptr @.str.84], [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"44 MHz\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"52 MHz\00", [25 x i8] zeroinitializer }, align 32
@dump_write_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %d-%04x: write: byte B 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dump_write_message\00", [45 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr = internal global ptr @dump_write_message._entry, section ".printk_index", align 4
@dump_write_message._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B0   video mode      : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.90 = internal global ptr @dump_write_message._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video trap\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sound trap\00", [21 x i8] zeroinitializer }, align 32
@dump_write_message._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.87, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B1   auto mute fm    : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.95 = internal global ptr @dump_write_message._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@dump_write_message._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B2   carrier mode    : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.99 = internal global ptr @dump_write_message._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QSS\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Intercarrier\00", [19 x i8] zeroinitializer }, align 32
@dump_write_message._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.87, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B3-4 tv sound/radio  : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.104 = internal global ptr @dump_write_message._entry.102, section ".printk_index", align 4
@dump_write_message._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.87, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B5   force mute audio: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.107 = internal global ptr @dump_write_message._entry.105, section ".printk_index", align 4
@dump_write_message._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.87, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B6   output port 1   : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.110 = internal global ptr @dump_write_message._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"high (inactive)\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"low (active)\00", [19 x i8] zeroinitializer }, align 32
@dump_write_message._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.87, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   B7   output port 2   : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.115 = internal global ptr @dump_write_message._entry.113, section ".printk_index", align 4
@dump_write_message._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.87, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %d-%04x: write: byte C 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.118 = internal global ptr @dump_write_message._entry.116, section ".printk_index", align 4
@dump_write_message._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.87, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s %d-%04x:   C0-4 top adjustment  : %s dB\0A\00", [50 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.121 = internal global ptr @dump_write_message._entry.119, section ".printk_index", align 4
@dump_write_message._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.87, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   C5-6 de-emphasis     : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.124 = internal global ptr @dump_write_message._entry.122, section ".printk_index", align 4
@dump_write_message._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.87, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   C7   audio gain      : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.127 = internal global ptr @dump_write_message._entry.125, section ".printk_index", align 4
@dump_write_message._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.87, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %d-%04x: write: byte E 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.130 = internal global ptr @dump_write_message._entry.128, section ".printk_index", align 4
@dump_write_message._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.87, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   E0-1 sound carrier   : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.133 = internal global ptr @dump_write_message._entry.131, section ".printk_index", align 4
@dump_write_message._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.87, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s %d-%04x:   E6   l pll gating   : %s\0A\00", [54 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.136 = internal global ptr @dump_write_message._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"36\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@dump_write_message._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.87, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   E2-4 video if        : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.141 = internal global ptr @dump_write_message._entry.139, section ".printk_index", align 4
@dump_write_message._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.87, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   E7   vif agc output  : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.144 = internal global ptr @dump_write_message._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fm-agc radio\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sif-agc radio\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm radio carrier afc\00", [43 x i8] zeroinitializer }, align 32
@dump_write_message._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.87, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.149 = internal global ptr @dump_write_message._entry.148, section ".printk_index", align 4
@dump_write_message._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.87, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x:   E5   tuner gain      : %s\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.152 = internal global ptr @dump_write_message._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"minimum\00", [24 x i8] zeroinitializer }, align 32
@dump_write_message._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.87, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.157 = internal global ptr @dump_write_message._entry.156, section ".printk_index", align 4
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pin3 port, pin22 vif agc out\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pin22 port, pin3 vif acg ext in\00", [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pin3+pin22 port\00", [16 x i8] zeroinitializer }, align 32
@dump_write_message._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.87, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s %d-%04x: --\0A\00", [46 x i8] zeroinitializer }, align 32
@dump_write_message._entry_ptr.163 = internal global ptr @dump_write_message._entry.161, section ".printk_index", align 4
@tda9887_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 1)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9887_status\00", [17 x i8] zeroinitializer }, align 32
@tda9887_status._entry_ptr = internal global ptr @tda9887_status._entry, section ".printk_index", align 4
@dump_read_message.afc = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181], [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"- 12.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"- 37.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"- 62.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"- 87.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-112.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-137.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-162.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"-187.5 kHz [min]\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"+187.5 kHz [max]\00", [47 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+162.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+137.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+112.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+ 87.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+ 62.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+ 37.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+ 12.5 kHz\00", [21 x i8] zeroinitializer }, align 32
@dump_read_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s %d-%04x: read: 0x%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dump_read_message\00", [46 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr = internal global ptr @dump_read_message._entry, section ".printk_index", align 4
@dump_read_message._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x:   after power on : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr.186 = internal global ptr @dump_read_message._entry.184, section ".printk_index", align 4
@dump_read_message._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x:   afc            : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr.189 = internal global ptr @dump_read_message._entry.187, section ".printk_index", align 4
@dump_read_message._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.183, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x:   fmif level     : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr.192 = internal global ptr @dump_read_message._entry.190, section ".printk_index", align 4
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@dump_read_message._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.183, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x:   afc window     : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr.197 = internal global ptr @dump_read_message._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@dump_read_message._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.183, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x:   vfi level      : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_read_message._entry_ptr.202 = internal global ptr @dump_read_message._entry.200, section ".printk_index", align 4
@tda9887_get_afc.AFC_BITS_2_kHz = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -12500, i32 -37500, i32 -62500, i32 -97500, i32 -112500, i32 -137500, i32 -162500, i32 -187500, i32 187500, i32 162500, i32 137500, i32 112500, i32 97500, i32 62500, i32 37500, i32 12500], [32 x i8] zeroinitializer }, align 32
@tda9887_tuner_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s %d-%04x: Data bytes: b=0x%02x c=0x%02x e=0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda9887_tuner_status\00", [43 x i8] zeroinitializer }, align 32
@tda9887_tuner_status._entry_ptr = internal global ptr @tda9887_tuner_status._entry, section ".printk_index", align 4
@tda9887_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda9887_release\00", [16 x i8] zeroinitializer }, align 32
@tda9887_release._entry_ptr = internal global ptr @tda9887_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 131072, i64 196608]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 24, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"port1\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 433, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"port2\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 434, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant [4 x i8] c"qss\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 435, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 436, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"tda9887_list_mutex\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 29, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 684, i32 13 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 694, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"tda9887_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 663, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 28, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 577, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 583, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [11 x i8] c"radio_mono\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 257, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant [13 x i8] c"radio_stereo\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 245, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant [8 x i8] c"tvnorms\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 137, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 422, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 426, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 258, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 246, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 140, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 151, i32 12 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 162, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 173, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 184, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 192, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 201, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 211, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 222, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 233, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 305, i32 15 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 306, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 307, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 308, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 311, i32 15 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 17 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 24 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 31 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 38 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 45 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 312, i32 52 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 10 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 24 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 31 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 38 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 45 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 313, i32 52 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 17 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 24 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 31 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 38 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 45 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 52 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 17 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 24 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 31 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 38 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 45 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 52 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"deemph\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 317, i32 15 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 318, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 318, i32 15 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 318, i32 21 }
@___asan_gen_.467 = private unnamed_addr constant [8 x i8] c"carrier\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 320, i32 15 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 321, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 322, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 323, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 324, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [4 x i8] c"vif\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 326, i32 15 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 327, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 328, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 329, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 330, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 331, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 332, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 333, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 334, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [4 x i8] c"rif\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 336, i32 15 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 337, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 338, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 343, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 344, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 346, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 348, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 350, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 352, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 354, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 356, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 359, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 360, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 362, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 364, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 367, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 368, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 370, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 375, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 377, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 384, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 386, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 390, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 396, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 542, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant [4 x i8] c"afc\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 275, i32 15 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 276, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 277, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 278, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 279, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 280, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 281, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 282, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 283, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 284, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 285, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 286, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 287, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 288, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 289, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 290, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 291, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 293, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 294, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 295, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 296, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 297, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 298, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [15 x i8] c"AFC_BITS_2_kHz\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 603, i32 19 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 596, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.825 = private constant [34 x i8] c"../drivers/media/tuners/tda9887.c\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 656, i32 3 }
@llvm.compiler.used = appending global [256 x ptr] [ptr @__UNIQUE_ID_adjusttype297, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_port1type294, ptr @__UNIQUE_ID_port2type295, ptr @__UNIQUE_ID_qsstype296, ptr @__ksymtab_tda9887_attach, ptr @__param_adjust, ptr @__param_debug, ptr @__param_port1, ptr @__param_port2, ptr @__param_qss, ptr @dump_read_message._entry, ptr @dump_read_message._entry.184, ptr @dump_read_message._entry.187, ptr @dump_read_message._entry.190, ptr @dump_read_message._entry.195, ptr @dump_read_message._entry.200, ptr @dump_read_message._entry_ptr, ptr @dump_read_message._entry_ptr.186, ptr @dump_read_message._entry_ptr.189, ptr @dump_read_message._entry_ptr.192, ptr @dump_read_message._entry_ptr.197, ptr @dump_read_message._entry_ptr.202, ptr @dump_write_message._entry, ptr @dump_write_message._entry.102, ptr @dump_write_message._entry.105, ptr @dump_write_message._entry.108, ptr @dump_write_message._entry.113, ptr @dump_write_message._entry.116, ptr @dump_write_message._entry.119, ptr @dump_write_message._entry.122, ptr @dump_write_message._entry.125, ptr @dump_write_message._entry.128, ptr @dump_write_message._entry.131, ptr @dump_write_message._entry.134, ptr @dump_write_message._entry.139, ptr @dump_write_message._entry.142, ptr @dump_write_message._entry.148, ptr @dump_write_message._entry.150, ptr @dump_write_message._entry.156, ptr @dump_write_message._entry.161, ptr @dump_write_message._entry.88, ptr @dump_write_message._entry.93, ptr @dump_write_message._entry.97, ptr @dump_write_message._entry_ptr, ptr @dump_write_message._entry_ptr.104, ptr @dump_write_message._entry_ptr.107, ptr @dump_write_message._entry_ptr.110, ptr @dump_write_message._entry_ptr.115, ptr @dump_write_message._entry_ptr.118, ptr @dump_write_message._entry_ptr.121, ptr @dump_write_message._entry_ptr.124, ptr @dump_write_message._entry_ptr.127, ptr @dump_write_message._entry_ptr.130, ptr @dump_write_message._entry_ptr.133, ptr @dump_write_message._entry_ptr.136, ptr @dump_write_message._entry_ptr.141, ptr @dump_write_message._entry_ptr.144, ptr @dump_write_message._entry_ptr.149, ptr @dump_write_message._entry_ptr.152, ptr @dump_write_message._entry_ptr.157, ptr @dump_write_message._entry_ptr.163, ptr @dump_write_message._entry_ptr.90, ptr @dump_write_message._entry_ptr.95, ptr @dump_write_message._entry_ptr.99, ptr @tda9887_attach._entry, ptr @tda9887_attach._entry.4, ptr @tda9887_attach._entry.7, ptr @tda9887_attach._entry_ptr, ptr @tda9887_attach._entry_ptr.6, ptr @tda9887_attach._entry_ptr.9, ptr @tda9887_configure._entry, ptr @tda9887_configure._entry.14, ptr @tda9887_configure._entry_ptr, ptr @tda9887_configure._entry_ptr.16, ptr @tda9887_release._entry, ptr @tda9887_release._entry_ptr, ptr @tda9887_set_tvnorm._entry, ptr @tda9887_set_tvnorm._entry.19, ptr @tda9887_set_tvnorm._entry_ptr, ptr @tda9887_set_tvnorm._entry_ptr.21, ptr @tda9887_status._entry, ptr @tda9887_status._entry_ptr, ptr @tda9887_tuner_status._entry, ptr @tda9887_tuner_status._entry_ptr, ptr @debug, ptr @port1, ptr @port2, ptr @qss, ptr @adjust, ptr @tda9887_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @tda9887_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @radio_mono, ptr @radio_stereo, ptr @tvnorms, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dump_write_message.sound, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @dump_write_message.adjust, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @dump_write_message.deemph, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @dump_write_message.carrier, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @dump_write_message.vif, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @dump_write_message.rif, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @dump_read_message.afc, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @tda9887_get_afc.AFC_BITS_2_kHz, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjust to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_configure._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_mono to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_stereo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvnorms to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_set_tvnorm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_set_tvnorm._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.sound to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.adjust to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.deemph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.carrier to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.vif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message.rif to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_write_message._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message.afc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_read_message._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_get_afc.AFC_BITS_2_kHz to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_tuner_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9887_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda9887_attach(ptr noundef writeonly %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tda9887_list_mutex, i32 noundef 0) #5
  %.pn163 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp.not165 = icmp eq ptr %.pn163, @hybrid_tuner_instance_list
  br i1 %cmp.not165, label %entry.if.then39_crit_edge, label %for.body.lr.ph

entry.if.then39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %i2c_adap, null
  %nr.i151 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn166 = phi ptr [ %.pn163, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %priv.0167 = getelementptr i8, ptr %.pn166, i32 -16
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %adap = getelementptr i8, ptr %.pn166, i32 -12
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true2:                                   ; preds = %land.lhs.true
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  %4 = ptrtoint ptr %nr.i151 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp6 = icmp eq i32 %3, %5
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true2.for.inc_crit_edge

land.lhs.true2.for.inc_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %6 = ptrtoint ptr %priv.0167 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priv.0167, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %i2c_addr)
  %cmp10 = icmp eq i8 %7, %i2c_addr
  br i1 %cmp10, label %for.end, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true2.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn166 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn166, align 4
  %cmp.not = icmp eq ptr %.pn, @hybrid_tuner_instance_list
  br i1 %cmp.not, label %for.inc.if.then39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.then39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

for.end:                                          ; preds = %land.lhs.true7
  %name = getelementptr i8, ptr %.pn166, i32 -4
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %conv24 = zext i8 %i2c_addr to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef %3, i32 noundef %conv24) #8
  %count = getelementptr i8, ptr %.pn166, i32 -8
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp37 = icmp eq i32 %inc, 0
  br i1 %cmp37, label %for.end.if.then39_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__fail

for.end.if.then39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %for.end.if.then39_crit_edge, %for.inc.if.then39_crit_edge, %entry.if.then39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 56) #9
  %tobool41.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool41.not, label %if.then39.sw.default_crit_edge, label %if.end43

if.then39.sw.default_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

if.end43:                                         ; preds = %if.then39
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %i2c_addr, ptr %call7.i.i, align 8
  %adap47 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %adap47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i2c_adap, ptr %adap47, align 4
  %name49 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.3, ptr %name49, align 4
  %tobool60.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool60.not, label %if.end43.cond.end66_crit_edge, label %cond.true61

if.end43.cond.end66_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end66

cond.true61:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i153 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i153 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i153, align 4
  br label %cond.end66

cond.end66:                                       ; preds = %cond.true61, %if.end43.cond.end66_crit_edge
  %cond67 = phi i32 [ %18, %cond.true61 ], [ -1, %if.end43.cond.end66_crit_edge ]
  %conv70 = zext i8 %i2c_addr to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %cond67, i32 noundef %conv70) #8
  %hybrid_tuner_instance_list76 = getelementptr inbounds %struct.tda9887_priv, ptr %call7.i.i, i32 0, i32 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list76, ptr noundef %19, ptr noundef nonnull @hybrid_tuner_instance_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %cond.end66.list_add_tail.exit_crit_edge

cond.end66.list_add_tail.exit_crit_edge:          ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %hybrid_tuner_instance_list76, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %hybrid_tuner_instance_list76 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list76, align 8
  %prev3.i.i = getelementptr inbounds %struct.tda9887_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hybrid_tuner_instance_list76, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end66.list_add_tail.exit_crit_edge
  %count78 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %count78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count78, align 8
  %inc79 = add i32 %24, 1
  store i32 %inc79, ptr %count78, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc79, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0167, %for.end.__fail_crit_edge ]
  %25 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb84
  ]

__fail.sw.default_crit_edge:                      ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #5
  br label %cleanup

sw.bb84:                                          ; preds = %__fail
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %26 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv.1, ptr %analog_demod_priv, align 4
  %standby = getelementptr inbounds %struct.tda9887_priv, ptr %priv.1, i32 0, i32 7
  %27 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %standby, align 8
  %name92 = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv.1, i32 0, i32 3
  %28 = ptrtoint ptr %name92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name92, align 4
  %adap94 = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv.1, i32 0, i32 1
  %30 = ptrtoint ptr %adap94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap94, align 4
  %tobool95.not = icmp eq ptr %31, null
  br i1 %tobool95.not, label %sw.bb84.cond.end101_crit_edge, label %cond.true96

sw.bb84.cond.end101_crit_edge:                    ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end101

cond.true96:                                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i154 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %nr.i154 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr.i154, align 4
  br label %cond.end101

cond.end101:                                      ; preds = %cond.true96, %sw.bb84.cond.end101_crit_edge
  %cond102 = phi i32 [ %33, %cond.true96 ], [ -1, %sw.bb84.cond.end101_crit_edge ]
  %34 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priv.1, align 8
  %conv105 = zext i8 %35 to i32
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef %cond102, i32 noundef %conv105) #8
  br label %sw.epilog

sw.default:                                       ; preds = %__fail.sw.default_crit_edge, %if.then39.sw.default_crit_edge
  %priv.1159 = phi ptr [ %priv.1, %__fail.sw.default_crit_edge ], [ null, %if.then39.sw.default_crit_edge ]
  %analog_demod_priv111 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %36 = ptrtoint ptr %analog_demod_priv111 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %priv.1159, ptr %analog_demod_priv111, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end101
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #5
  %analog_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33
  %37 = call ptr @memcpy(ptr %analog_ops, ptr @tda9887_ops, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi ptr [ %fe, %sw.epilog ], [ null, %sw.bb ]
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9887_set_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %standby = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %standby, align 8
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %mode1 = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mode1, align 8
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode, align 8
  %audmode2 = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %audmode2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audmode2, align 4
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %std, align 8
  %std3 = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %std3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %std3, align 8
  tail call fastcc void @tda9887_configure(ptr noundef %fe)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9887_get_afc(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %afc) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg, align 1
  %mode = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131071, ptr %5, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 4
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp1 = icmp eq i32 %call.i, 1
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg, align 1
  %16 = lshr i8 %15, 1
  %17 = and i8 %16, 15
  %and = zext i8 %17 to i32
  %arrayidx = getelementptr [16 x i32], ptr @tda9887_get_afc.AFC_BITS_2_kHz, i32 0, i32 %and
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %afc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9887_tuner_status(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 8
  %conv = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %11 to i32
  %arrayidx9 = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 2
  %conv10 = zext i8 %13 to i32
  %arrayidx12 = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %3, i32 noundef %cond, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9887_standby(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %standby = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %standby, align 8
  tail call fastcc void @tda9887_configure(ptr noundef %fe)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9887_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tda9887_list_mutex, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 8
  %conv = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %5, i32 noundef %cond, i32 noundef %conv) #8
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end21

if.end21:                                         ; preds = %list_del.exit, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #5
  %20 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %analog_demod_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9887_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %2 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv_cfg, align 4
  %config = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %config, align 4
  tail call fastcc void @tda9887_configure(ptr noundef %fe)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda9887_configure(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [1 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %data = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 8
  %3 = load ptr, ptr %analog_demod_priv, align 4
  %mode.i = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end8.thread4.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %std5.i = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %std5.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %std5.i, align 8
  %and.i = and i64 %7, 527
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.cond.preheader.i.if.end8.i_crit_edge

for.cond.preheader.i.if.end8.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.end8.thread4.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %audmode.i = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %audmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  %radio_mono.radio_stereo.i = select i1 %cmp1.i, ptr @radio_mono, ptr @radio_stereo
  br label %do.body27.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %and.1.i = and i64 %7, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i)
  %tobool.not.1.i = icmp eq i64 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end8.i_crit_edge

for.inc.i.if.end8.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i64 %7, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2.i)
  %tobool.not.2.i = icmp eq i64 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end8.i_crit_edge

for.inc.1.i.if.end8.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i64 %7, 1280
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3.i)
  %tobool.not.3.i = icmp eq i64 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end8.i_crit_edge

for.inc.2.i.if.end8.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i64 %7, 851968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4.i)
  %tobool.not.4.i = icmp eq i64 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end8.i_crit_edge

for.inc.3.i.if.end8.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i64 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5.i)
  %tobool.not.5.i = icmp eq i64 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end8.i_crit_edge

for.inc.4.i.if.end8.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i64 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6.i)
  %tobool.not.6.i = icmp eq i64 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end8.i_crit_edge

for.inc.5.i.if.end8.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %and.7.i = and i64 %7, 3276800
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.7.i)
  %tobool.not.7.i = icmp eq i64 %and.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end8.i_crit_edge

for.inc.6.i.if.end8.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %and.8.i = and i64 %7, 36864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.8.i)
  %tobool.not.8.i = icmp eq i64 %and.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end8.i_crit_edge

for.inc.7.i.if.end8.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %and.9.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.9.i)
  %tobool.not.9.i = icmp eq i64 %and.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.do.body.i_crit_edge, label %for.inc.8.i.if.end8.i_crit_edge

for.inc.8.i.if.end8.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

for.inc.8.i.do.body.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end8.i:                                        ; preds = %for.inc.8.i.if.end8.i_crit_edge, %for.inc.7.i.if.end8.i_crit_edge, %for.inc.6.i.if.end8.i_crit_edge, %for.inc.5.i.if.end8.i_crit_edge, %for.inc.4.i.if.end8.i_crit_edge, %for.inc.3.i.if.end8.i_crit_edge, %for.inc.2.i.if.end8.i_crit_edge, %for.inc.1.i.if.end8.i_crit_edge, %for.inc.i.if.end8.i_crit_edge, %for.cond.preheader.i.if.end8.i_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end8.i_crit_edge ], [ 1, %for.inc.i.if.end8.i_crit_edge ], [ 2, %for.inc.1.i.if.end8.i_crit_edge ], [ 3, %for.inc.2.i.if.end8.i_crit_edge ], [ 4, %for.inc.3.i.if.end8.i_crit_edge ], [ 5, %for.inc.4.i.if.end8.i_crit_edge ], [ 6, %for.inc.5.i.if.end8.i_crit_edge ], [ 7, %for.inc.6.i.if.end8.i_crit_edge ], [ 8, %for.inc.7.i.if.end8.i_crit_edge ], [ 9, %for.inc.8.i.if.end8.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tvnorm, ptr @tvnorms, i32 %i.09.lcssa.i
  %cmp9.i = icmp eq ptr %add.ptr.i, null
  br i1 %cmp9.i, label %if.end8.i.do.body.i_crit_edge, label %if.end8.i.do.body27.i_crit_edge

if.end8.i.do.body27.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27.i

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %for.inc.8.i.do.body.i_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  br i1 %tobool11.not.i, label %do.body.i.tda9887_set_tvnorm.exit_crit_edge, label %do.end.i

do.body.i.tda9887_set_tvnorm.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda9887_set_tvnorm.exit

do.end.i:                                         ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap.i, align 4
  %tobool16.not.i = icmp eq ptr %14, null
  br i1 %tobool16.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %16, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 8
  %conv.i = zext i8 %18 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %12, i32 noundef %cond.i, i32 noundef %conv.i) #8
  br label %tda9887_set_tvnorm.exit

do.body27.i:                                      ; preds = %if.end8.i.do.body27.i_crit_edge, %if.end8.thread4.i
  %norm.07.i = phi ptr [ %radio_mono.radio_stereo.i, %if.end8.thread4.i ], [ %add.ptr.i, %if.end8.i.do.body27.i_crit_edge ]
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not.i = icmp eq i32 %19, 0
  br i1 %tobool28.not.i, label %do.body27.i.do.end56.i_crit_edge, label %do.end33.i

do.body27.i.do.end56.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56.i

do.end33.i:                                       ; preds = %do.body27.i
  %name36.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %name36.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name36.i, align 4
  %adap38.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %adap38.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap38.i, align 4
  %tobool39.not.i = icmp eq ptr %23, null
  br i1 %tobool39.not.i, label %do.end33.i.cond.end45.i_crit_edge, label %cond.true40.i

do.end33.i.cond.end45.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end45.i

cond.true40.i:                                    ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i1.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i1.i, align 4
  br label %cond.end45.i

cond.end45.i:                                     ; preds = %cond.true40.i, %do.end33.i.cond.end45.i_crit_edge
  %cond46.i = phi i32 [ %25, %cond.true40.i ], [ -1, %do.end33.i.cond.end45.i_crit_edge ]
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 8
  %conv49.i = zext i8 %27 to i32
  %name50.i = getelementptr inbounds %struct.tvnorm, ptr %norm.07.i, i32 0, i32 1
  %28 = ptrtoint ptr %name50.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name50.i, align 8
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %21, i32 noundef %cond46.i, i32 noundef %conv49.i, ptr noundef %29) #8
  br label %do.end56.i

do.end56.i:                                       ; preds = %cond.end45.i, %do.body27.i.do.end56.i_crit_edge
  %b.i = getelementptr inbounds %struct.tvnorm, ptr %norm.07.i, i32 0, i32 2
  %30 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %b.i, align 4
  %arrayidx57.i = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx57.i, align 1
  %c.i = getelementptr inbounds %struct.tvnorm, ptr %norm.07.i, i32 0, i32 3
  %33 = ptrtoint ptr %c.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %c.i, align 1
  %arrayidx58.i = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx58.i, align 1
  %e.i = getelementptr inbounds %struct.tvnorm, ptr %norm.07.i, i32 0, i32 4
  %36 = ptrtoint ptr %e.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %e.i, align 2
  %arrayidx59.i = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx59.i, align 1
  br label %tda9887_set_tvnorm.exit

tda9887_set_tvnorm.exit:                          ; preds = %do.end56.i, %cond.end.i, %do.body.i.tda9887_set_tvnorm.exit_crit_edge
  %arrayidx = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %41 = or i8 %40, -64
  store i8 %41, ptr %arrayidx, align 1
  %42 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %analog_demod_priv, align 4
  %config.i = getelementptr inbounds %struct.tda9887_priv, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %config.i, align 4
  %and.i111 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i112, label %tda9887_set_tvnorm.exit.if.end.i_crit_edge, label %if.then.i

tda9887_set_tvnorm.exit.if.end.i_crit_edge:       ; preds = %tda9887_set_tvnorm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %tda9887_set_tvnorm.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = and i8 %47, -65
  store i8 %48, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %tda9887_set_tvnorm.exit.if.end.i_crit_edge
  %and4.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx7.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7.i, align 1
  %51 = or i8 %50, 64
  store i8 %51, ptr %arrayidx7.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %and12.i = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end19.i_crit_edge, label %if.then14.i

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx15.i, align 1
  %54 = and i8 %53, 127
  store i8 %54, ptr %arrayidx15.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end19.i_crit_edge
  %and21.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end28.i_crit_edge, label %if.then23.i

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx24.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx24.i, align 1
  %57 = or i8 %56, -128
  store i8 %57, ptr %arrayidx24.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end28.i_crit_edge
  %and30.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end37.i_crit_edge, label %if.then32.i

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx33.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx33.i, align 1
  %60 = or i8 %59, 4
  store i8 %60, ptr %arrayidx33.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %if.end28.i.if.end37.i_crit_edge
  %and39.i = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end46.i_crit_edge, label %if.then41.i

if.end37.i.if.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx42.i, align 1
  %63 = and i8 %62, -5
  store i8 %63, ptr %arrayidx42.i, align 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end46.i_crit_edge
  %and48.i = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.if.end55.i_crit_edge, label %if.then50.i

if.end46.i.if.end55.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx51.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx51.i, align 1
  %66 = or i8 %65, 2
  store i8 %66, ptr %arrayidx51.i, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end55.i_crit_edge
  %and57.i = and i32 %45, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end55.i.if.end80.i_crit_edge, label %if.then59.i

if.end55.i.if.end80.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.then59.i:                                      ; preds = %if.end55.i
  %arrayidx60.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx60.i, align 1
  %69 = and i8 %68, -97
  store i8 %69, ptr %arrayidx60.i, align 1
  %70 = zext i32 %and57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %and57.i, label %if.then59.i.if.end80.i_crit_edge [
    i32 196608, label %sw.bb75.i
    i32 131072, label %sw.bb70.i
  ]

if.then59.i.if.end80.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

sw.bb70.i:                                        ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = or i8 %68, 96
  br label %if.end80.sink.split.i

sw.bb75.i:                                        ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = or i8 %69, 32
  br label %if.end80.sink.split.i

if.end80.sink.split.i:                            ; preds = %sw.bb75.i, %sw.bb70.i
  %.sink.i = phi i8 [ %71, %sw.bb70.i ], [ %72, %sw.bb75.i ]
  %73 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.i, ptr %arrayidx60.i, align 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end80.sink.split.i, %if.then59.i.if.end80.i_crit_edge, %if.end55.i.if.end80.i_crit_edge
  %and82.i = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end80.i.if.end95.i_crit_edge, label %if.then84.i

if.end80.i.if.end95.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.then84.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx85.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx85.i, align 1
  %76 = and i8 %75, -32
  %shr.i = lshr i32 %45, 8
  %77 = trunc i32 %shr.i to i8
  %78 = and i8 %77, 31
  %conv94.i = or i8 %76, %78
  store i8 %conv94.i, ptr %arrayidx85.i, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then84.i, %if.end80.i.if.end95.i_crit_edge
  %and97.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end95.i.if.end106.i_crit_edge, label %land.lhs.true.i

if.end95.i.if.end106.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

land.lhs.true.i:                                  ; preds = %if.end95.i
  %std.i = getelementptr inbounds %struct.tda9887_priv, ptr %43, i32 0, i32 6
  %79 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %std.i, align 8
  %and99.i = and i64 %80, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99.i)
  %tobool100.not.i = icmp eq i64 %and99.i, 0
  br i1 %tobool100.not.i, label %land.lhs.true.i.if.end106.i_crit_edge, label %if.then101.i

land.lhs.true.i.if.end106.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

if.then101.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx102.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx102.i, align 1
  %83 = and i8 %82, -5
  store i8 %83, ptr %arrayidx102.i, align 1
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then101.i, %land.lhs.true.i.if.end106.i_crit_edge, %if.end95.i.if.end106.i_crit_edge
  %and108.i = and i32 %45, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %if.end106.i.if.end115.i_crit_edge, label %if.then110.i

if.end106.i.if.end115.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i

if.then110.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx111.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx111.i, align 1
  %86 = and i8 %85, -65
  store i8 %86, ptr %arrayidx111.i, align 1
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then110.i, %if.end106.i.if.end115.i_crit_edge
  %mode.i113 = getelementptr inbounds %struct.tda9887_priv, ptr %43, i32 0, i32 4
  %87 = ptrtoint ptr %mode.i113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mode.i113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i114 = icmp eq i32 %88, 1
  br i1 %cmp.i114, label %if.then117.i, label %if.end115.i.tda9887_do_config.exit_crit_edge

if.end115.i.tda9887_do_config.exit_crit_edge:     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda9887_do_config.exit

if.then117.i:                                     ; preds = %if.end115.i
  %and119.i = and i32 %45, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.not.i, label %if.then117.i.if.end130.i_crit_edge, label %if.then121.i

if.then117.i.if.end130.i_crit_edge:               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130.i

if.then121.i:                                     ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx122.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 3
  %89 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx122.i, align 1
  %91 = and i8 %90, -29
  %92 = or i8 %91, 4
  store i8 %92, ptr %arrayidx122.i, align 1
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then121.i, %if.then117.i.if.end130.i_crit_edge
  %and132.i = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.end130.i.tda9887_do_config.exit_crit_edge, label %if.then134.i

if.end130.i.tda9887_do_config.exit_crit_edge:     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda9887_do_config.exit

if.then134.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx135.i = getelementptr %struct.tda9887_priv, ptr %43, i32 0, i32 2, i32 3
  %93 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx135.i, align 1
  %95 = and i8 %94, -33
  store i8 %95, ptr %arrayidx135.i, align 1
  br label %tda9887_do_config.exit

tda9887_do_config.exit:                           ; preds = %if.then134.i, %if.end130.i.tda9887_do_config.exit_crit_edge, %if.end115.i.tda9887_do_config.exit_crit_edge
  %96 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %analog_demod_priv, align 4
  %98 = load i32, ptr @port1, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %98, label %if.then1.i [
    i32 -1, label %tda9887_do_config.exit.if.end6.i_crit_edge
    i32 0, label %if.else.i
  ]

tda9887_do_config.exit.if.end6.i_crit_edge:       ; preds = %tda9887_do_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then1.i:                                       ; preds = %tda9887_do_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i116 = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i116, align 1
  %102 = or i8 %101, 64
  store i8 %102, ptr %arrayidx.i116, align 1
  br label %if.end6.i

if.else.i:                                        ; preds = %tda9887_do_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3.i = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx3.i, align 1
  %105 = and i8 %104, -65
  store i8 %105, ptr %arrayidx3.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then1.i, %tda9887_do_config.exit.if.end6.i_crit_edge
  %106 = load i32, ptr @port2, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %106, label %if.then11.i [
    i32 -1, label %if.end6.i.if.end22.i_crit_edge
    i32 0, label %if.else16.i
  ]

if.end6.i.if.end22.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx12.i, align 1
  %110 = or i8 %109, -128
  store i8 %110, ptr %arrayidx12.i, align 1
  br label %if.end22.i

if.else16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17.i = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx17.i, align 1
  %113 = and i8 %112, 127
  store i8 %113, ptr %arrayidx17.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %if.then11.i, %if.end6.i.if.end22.i_crit_edge
  %114 = load i32, ptr @qss, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %114, label %if.then27.i [
    i32 -1, label %if.end22.i.if.end38.i_crit_edge
    i32 0, label %if.else32.i
  ]

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx28.i = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx28.i, align 1
  %118 = or i8 %117, 4
  store i8 %118, ptr %arrayidx28.i, align 1
  br label %if.end38.i

if.else32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx33.i117 = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %arrayidx33.i117 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx33.i117, align 1
  %121 = and i8 %120, -5
  store i8 %121, ptr %arrayidx33.i117, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else32.i, %if.then27.i, %if.end22.i.if.end38.i_crit_edge
  %122 = load i32, ptr @adjust, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %122)
  %cmp39.i = icmp ult i32 %122, 32
  br i1 %cmp39.i, label %if.then41.i120, label %if.end38.i.tda9887_set_insmod.exit_crit_edge

if.end38.i.tda9887_set_insmod.exit_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda9887_set_insmod.exit

if.then41.i120:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42.i118 = getelementptr %struct.tda9887_priv, ptr %97, i32 0, i32 2, i32 2
  %123 = ptrtoint ptr %arrayidx42.i118 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx42.i118, align 1
  %125 = and i8 %124, -32
  store i8 %125, ptr %arrayidx42.i118, align 1
  %126 = load i32, ptr @adjust, align 4
  %127 = trunc i32 %126 to i8
  %conv49.i119 = or i8 %125, %127
  store i8 %conv49.i119, ptr %arrayidx42.i118, align 1
  br label %tda9887_set_insmod.exit

tda9887_set_insmod.exit:                          ; preds = %if.then41.i120, %if.end38.i.tda9887_set_insmod.exit_crit_edge
  %standby = getelementptr inbounds %struct.tda9887_priv, ptr %1, i32 0, i32 7
  %128 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %standby, align 8, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not = icmp eq i8 %129, 0
  br i1 %tobool.not, label %tda9887_set_insmod.exit.do.body_crit_edge, label %if.then

tda9887_set_insmod.exit.do.body_crit_edge:        ; preds = %tda9887_set_insmod.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %tda9887_set_insmod.exit
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx, align 1
  %132 = or i8 %131, 32
  store i8 %132, ptr %arrayidx, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %tda9887_set_insmod.exit.do.body_crit_edge
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool15.not = icmp eq i32 %133, 0
  br i1 %tobool15.not, label %do.body.if.end45_crit_edge, label %do.end

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end:                                           ; preds = %do.body
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %134 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %136 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adap, align 4
  %tobool20.not = icmp eq ptr %137, null
  br i1 %tobool20.not, label %do.end.do.end40_crit_edge, label %cond.true

do.end.do.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nr.i, align 4
  br label %do.end40

do.end40:                                         ; preds = %cond.true, %do.end.do.end40_crit_edge
  %cond = phi i32 [ %139, %cond.true ], [ -1, %do.end.do.end40_crit_edge ]
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %1, align 8
  %conv25 = zext i8 %141 to i32
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %143 to i32
  %arrayidx30 = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 2
  %144 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx30, align 2
  %conv31 = zext i8 %145 to i32
  %arrayidx33 = getelementptr %struct.tda9887_priv, ptr %1, i32 0, i32 2, i32 3
  %146 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %147 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %135, i32 noundef %cond, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv31, i32 noundef %conv34) #8
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 1
  br i1 %cmp, label %if.then42, label %do.end40.if.end45_crit_edge

do.end40.if.end45_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then42:                                        ; preds = %do.end40
  %148 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %analog_demod_priv, align 4
  %name.i122 = getelementptr inbounds %struct.tuner_i2c_props, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name.i122, align 4
  %adap.i123 = getelementptr inbounds %struct.tuner_i2c_props, ptr %149, i32 0, i32 1
  %152 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %adap.i123, align 4
  %tobool.not.i124 = icmp eq ptr %153, null
  br i1 %tobool.not.i124, label %if.then42.cond.end.i130_crit_edge, label %cond.true.i126

if.then42.cond.end.i130_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i130

cond.true.i126:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i.i125 = getelementptr inbounds %struct.i2c_adapter, ptr %153, i32 0, i32 11
  %154 = ptrtoint ptr %nr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nr.i.i125, align 4
  br label %cond.end.i130

cond.end.i130:                                    ; preds = %cond.true.i126, %if.then42.cond.end.i130_crit_edge
  %cond.i127 = phi i32 [ %155, %cond.true.i126 ], [ -1, %if.then42.cond.end.i130_crit_edge ]
  %156 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %149, align 8
  %conv.i128 = zext i8 %157 to i32
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx, align 1
  %conv7.i = zext i8 %159 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %151, i32 noundef %cond.i127, i32 noundef %conv.i128, i32 noundef %conv7.i) #8
  %160 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name.i122, align 4
  %162 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adap.i123, align 4
  %tobool23.not.i = icmp eq ptr %163, null
  br i1 %tobool23.not.i, label %cond.end.i130.cond.end29.i_crit_edge, label %cond.true24.i

cond.end.i130.cond.end29.i_crit_edge:             ; preds = %cond.end.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end29.i

cond.true24.i:                                    ; preds = %cond.end.i130
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i778.i = getelementptr inbounds %struct.i2c_adapter, ptr %163, i32 0, i32 11
  %164 = ptrtoint ptr %nr.i778.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nr.i778.i, align 4
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true24.i, %cond.end.i130.cond.end29.i_crit_edge
  %cond30.i = phi i32 [ %165, %cond.true24.i ], [ -1, %cond.end.i130.cond.end29.i_crit_edge ]
  %166 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %149, align 8
  %conv33.i = zext i8 %167 to i32
  %168 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx, align 1
  %170 = and i8 %169, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool36.not.i = icmp eq i8 %170, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.92, ptr @.str.91
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %161, i32 noundef %cond30.i, i32 noundef %conv33.i, ptr noundef nonnull %cond37.i) #8
  %171 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name.i122, align 4
  %173 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %adap.i123, align 4
  %tobool53.not.i = icmp eq ptr %174, null
  br i1 %tobool53.not.i, label %cond.end29.i.cond.end59.i_crit_edge, label %cond.true54.i

cond.end29.i.cond.end59.i_crit_edge:              ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end59.i

cond.true54.i:                                    ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i779.i = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 11
  %175 = ptrtoint ptr %nr.i779.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nr.i779.i, align 4
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.true54.i, %cond.end29.i.cond.end59.i_crit_edge
  %cond60.i = phi i32 [ %176, %cond.true54.i ], [ -1, %cond.end29.i.cond.end59.i_crit_edge ]
  %177 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %149, align 8
  %conv63.i = zext i8 %178 to i32
  %179 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx, align 1
  %181 = and i8 %180, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool67.not.i = icmp eq i8 %181, 0
  %cond68.i = select i1 %tobool67.not.i, ptr @.str.69, ptr @.str.96
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %172, i32 noundef %cond60.i, i32 noundef %conv63.i, ptr noundef nonnull %cond68.i) #8
  %182 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name.i122, align 4
  %184 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adap.i123, align 4
  %tobool84.not.i = icmp eq ptr %185, null
  br i1 %tobool84.not.i, label %cond.end59.i.cond.end90.i_crit_edge, label %cond.true85.i

cond.end59.i.cond.end90.i_crit_edge:              ; preds = %cond.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end90.i

cond.true85.i:                                    ; preds = %cond.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i780.i = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 11
  %186 = ptrtoint ptr %nr.i780.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %nr.i780.i, align 4
  br label %cond.end90.i

cond.end90.i:                                     ; preds = %cond.true85.i, %cond.end59.i.cond.end90.i_crit_edge
  %cond91.i = phi i32 [ %187, %cond.true85.i ], [ -1, %cond.end59.i.cond.end90.i_crit_edge ]
  %188 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %149, align 8
  %conv94.i131 = zext i8 %189 to i32
  %190 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx, align 1
  %192 = and i8 %191, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool98.not.i132 = icmp eq i8 %192, 0
  %cond99.i = select i1 %tobool98.not.i132, ptr @.str.101, ptr @.str.100
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %183, i32 noundef %cond91.i, i32 noundef %conv94.i131, ptr noundef nonnull %cond99.i) #8
  %193 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %name.i122, align 4
  %195 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %adap.i123, align 4
  %tobool115.not.i = icmp eq ptr %196, null
  br i1 %tobool115.not.i, label %cond.end90.i.cond.end121.i_crit_edge, label %cond.true116.i

cond.end90.i.cond.end121.i_crit_edge:             ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end121.i

cond.true116.i:                                   ; preds = %cond.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i781.i = getelementptr inbounds %struct.i2c_adapter, ptr %196, i32 0, i32 11
  %197 = ptrtoint ptr %nr.i781.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nr.i781.i, align 4
  br label %cond.end121.i

cond.end121.i:                                    ; preds = %cond.true116.i, %cond.end90.i.cond.end121.i_crit_edge
  %cond122.i = phi i32 [ %198, %cond.true116.i ], [ -1, %cond.end90.i.cond.end121.i_crit_edge ]
  %199 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %149, align 8
  %conv125.i = zext i8 %200 to i32
  %201 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx, align 1
  %203 = lshr i8 %202, 3
  %204 = and i8 %203, 3
  %205 = zext i8 %204 to i32
  %arrayidx129.i = getelementptr [4 x ptr], ptr @dump_write_message.sound, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx129.i, align 4
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %194, i32 noundef %cond122.i, i32 noundef %conv125.i, ptr noundef %207) #8
  %208 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name.i122, align 4
  %210 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %adap.i123, align 4
  %tobool145.not.i = icmp eq ptr %211, null
  br i1 %tobool145.not.i, label %cond.end121.i.cond.end151.i_crit_edge, label %cond.true146.i

cond.end121.i.cond.end151.i_crit_edge:            ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end151.i

cond.true146.i:                                   ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i782.i = getelementptr inbounds %struct.i2c_adapter, ptr %211, i32 0, i32 11
  %212 = ptrtoint ptr %nr.i782.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nr.i782.i, align 4
  br label %cond.end151.i

cond.end151.i:                                    ; preds = %cond.true146.i, %cond.end121.i.cond.end151.i_crit_edge
  %cond152.i = phi i32 [ %213, %cond.true146.i ], [ -1, %cond.end121.i.cond.end151.i_crit_edge ]
  %214 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %149, align 8
  %conv155.i = zext i8 %215 to i32
  %216 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx, align 1
  %218 = and i8 %217, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool159.not.i = icmp eq i8 %218, 0
  %cond160.i = select i1 %tobool159.not.i, ptr @.str.69, ptr @.str.96
  %call161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %209, i32 noundef %cond152.i, i32 noundef %conv155.i, ptr noundef nonnull %cond160.i) #8
  %219 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name.i122, align 4
  %221 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %adap.i123, align 4
  %tobool176.not.i = icmp eq ptr %222, null
  br i1 %tobool176.not.i, label %cond.end151.i.cond.end182.i_crit_edge, label %cond.true177.i

cond.end151.i.cond.end182.i_crit_edge:            ; preds = %cond.end151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end182.i

cond.true177.i:                                   ; preds = %cond.end151.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i783.i = getelementptr inbounds %struct.i2c_adapter, ptr %222, i32 0, i32 11
  %223 = ptrtoint ptr %nr.i783.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nr.i783.i, align 4
  br label %cond.end182.i

cond.end182.i:                                    ; preds = %cond.true177.i, %cond.end151.i.cond.end182.i_crit_edge
  %cond183.i = phi i32 [ %224, %cond.true177.i ], [ -1, %cond.end151.i.cond.end182.i_crit_edge ]
  %225 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %149, align 8
  %conv186.i = zext i8 %226 to i32
  %227 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx, align 1
  %229 = and i8 %228, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool190.not.i = icmp eq i8 %229, 0
  %cond191.i = select i1 %tobool190.not.i, ptr @.str.112, ptr @.str.111
  %call192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %220, i32 noundef %cond183.i, i32 noundef %conv186.i, ptr noundef nonnull %cond191.i) #8
  %230 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name.i122, align 4
  %232 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %adap.i123, align 4
  %tobool207.not.i = icmp eq ptr %233, null
  br i1 %tobool207.not.i, label %cond.end182.i.cond.end213.i_crit_edge, label %cond.true208.i

cond.end182.i.cond.end213.i_crit_edge:            ; preds = %cond.end182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end213.i

cond.true208.i:                                   ; preds = %cond.end182.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i784.i = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 11
  %234 = ptrtoint ptr %nr.i784.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %nr.i784.i, align 4
  br label %cond.end213.i

cond.end213.i:                                    ; preds = %cond.true208.i, %cond.end182.i.cond.end213.i_crit_edge
  %cond214.i = phi i32 [ %235, %cond.true208.i ], [ -1, %cond.end182.i.cond.end213.i_crit_edge ]
  %236 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %149, align 8
  %conv217.i = zext i8 %237 to i32
  %238 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %239)
  %tobool221.not.i = icmp sgt i8 %239, -1
  %cond222.i = select i1 %tobool221.not.i, ptr @.str.112, ptr @.str.111
  %call223.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %231, i32 noundef %cond214.i, i32 noundef %conv217.i, ptr noundef nonnull %cond222.i) #8
  %240 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %name.i122, align 4
  %242 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %adap.i123, align 4
  %tobool238.not.i = icmp eq ptr %243, null
  br i1 %tobool238.not.i, label %cond.end213.i.cond.end244.i_crit_edge, label %cond.true239.i

cond.end213.i.cond.end244.i_crit_edge:            ; preds = %cond.end213.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end244.i

cond.true239.i:                                   ; preds = %cond.end213.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i785.i = getelementptr inbounds %struct.i2c_adapter, ptr %243, i32 0, i32 11
  %244 = ptrtoint ptr %nr.i785.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nr.i785.i, align 4
  br label %cond.end244.i

cond.end244.i:                                    ; preds = %cond.true239.i, %cond.end213.i.cond.end244.i_crit_edge
  %cond245.i = phi i32 [ %245, %cond.true239.i ], [ -1, %cond.end213.i.cond.end244.i_crit_edge ]
  %246 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %149, align 8
  %conv248.i = zext i8 %247 to i32
  %248 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx30, align 1
  %conv250.i = zext i8 %249 to i32
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %241, i32 noundef %cond245.i, i32 noundef %conv248.i, i32 noundef %conv250.i) #8
  %250 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %name.i122, align 4
  %252 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %adap.i123, align 4
  %tobool266.not.i = icmp eq ptr %253, null
  br i1 %tobool266.not.i, label %cond.end244.i.cond.end272.i_crit_edge, label %cond.true267.i

cond.end244.i.cond.end272.i_crit_edge:            ; preds = %cond.end244.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end272.i

cond.true267.i:                                   ; preds = %cond.end244.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i786.i = getelementptr inbounds %struct.i2c_adapter, ptr %253, i32 0, i32 11
  %254 = ptrtoint ptr %nr.i786.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %nr.i786.i, align 4
  br label %cond.end272.i

cond.end272.i:                                    ; preds = %cond.true267.i, %cond.end244.i.cond.end272.i_crit_edge
  %cond273.i = phi i32 [ %255, %cond.true267.i ], [ -1, %cond.end244.i.cond.end272.i_crit_edge ]
  %256 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %149, align 8
  %conv276.i = zext i8 %257 to i32
  %258 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx30, align 1
  %260 = and i8 %259, 31
  %and279.i = zext i8 %260 to i32
  %arrayidx280.i = getelementptr [32 x ptr], ptr @dump_write_message.adjust, i32 0, i32 %and279.i
  %261 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx280.i, align 4
  %call281.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %251, i32 noundef %cond273.i, i32 noundef %conv276.i, ptr noundef %262) #8
  %263 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name.i122, align 4
  %265 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %adap.i123, align 4
  %tobool296.not.i = icmp eq ptr %266, null
  br i1 %tobool296.not.i, label %cond.end272.i.cond.end302.i_crit_edge, label %cond.true297.i

cond.end272.i.cond.end302.i_crit_edge:            ; preds = %cond.end272.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end302.i

cond.true297.i:                                   ; preds = %cond.end272.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i787.i = getelementptr inbounds %struct.i2c_adapter, ptr %266, i32 0, i32 11
  %267 = ptrtoint ptr %nr.i787.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %nr.i787.i, align 4
  br label %cond.end302.i

cond.end302.i:                                    ; preds = %cond.true297.i, %cond.end272.i.cond.end302.i_crit_edge
  %cond303.i = phi i32 [ %268, %cond.true297.i ], [ -1, %cond.end272.i.cond.end302.i_crit_edge ]
  %269 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %149, align 8
  %conv306.i = zext i8 %270 to i32
  %271 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx30, align 1
  %273 = lshr i8 %272, 5
  %274 = and i8 %273, 3
  %275 = zext i8 %274 to i32
  %arrayidx311.i = getelementptr [4 x ptr], ptr @dump_write_message.deemph, i32 0, i32 %275
  %276 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx311.i, align 4
  %call312.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %264, i32 noundef %cond303.i, i32 noundef %conv306.i, ptr noundef %277) #8
  %278 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %name.i122, align 4
  %280 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %adap.i123, align 4
  %tobool327.not.i = icmp eq ptr %281, null
  br i1 %tobool327.not.i, label %cond.end302.i.cond.end333.i_crit_edge, label %cond.true328.i

cond.end302.i.cond.end333.i_crit_edge:            ; preds = %cond.end302.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end333.i

cond.true328.i:                                   ; preds = %cond.end302.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i788.i = getelementptr inbounds %struct.i2c_adapter, ptr %281, i32 0, i32 11
  %282 = ptrtoint ptr %nr.i788.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %nr.i788.i, align 4
  br label %cond.end333.i

cond.end333.i:                                    ; preds = %cond.true328.i, %cond.end302.i.cond.end333.i_crit_edge
  %cond334.i = phi i32 [ %283, %cond.true328.i ], [ -1, %cond.end302.i.cond.end333.i_crit_edge ]
  %284 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %149, align 8
  %conv337.i = zext i8 %285 to i32
  %286 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %287)
  %tobool341.not.i = icmp sgt i8 %287, -1
  %cond342.i = select i1 %tobool341.not.i, ptr @.str.53, ptr @.str.47
  %call343.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %279, i32 noundef %cond334.i, i32 noundef %conv337.i, ptr noundef nonnull %cond342.i) #8
  %288 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name.i122, align 4
  %290 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %adap.i123, align 4
  %tobool358.not.i = icmp eq ptr %291, null
  br i1 %tobool358.not.i, label %cond.end333.i.cond.end364.i_crit_edge, label %cond.true359.i

cond.end333.i.cond.end364.i_crit_edge:            ; preds = %cond.end333.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end364.i

cond.true359.i:                                   ; preds = %cond.end333.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i789.i = getelementptr inbounds %struct.i2c_adapter, ptr %291, i32 0, i32 11
  %292 = ptrtoint ptr %nr.i789.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %nr.i789.i, align 4
  br label %cond.end364.i

cond.end364.i:                                    ; preds = %cond.true359.i, %cond.end333.i.cond.end364.i_crit_edge
  %cond365.i = phi i32 [ %293, %cond.true359.i ], [ -1, %cond.end333.i.cond.end364.i_crit_edge ]
  %294 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %149, align 8
  %conv368.i = zext i8 %295 to i32
  %296 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx33, align 1
  %conv370.i = zext i8 %297 to i32
  %call371.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %289, i32 noundef %cond365.i, i32 noundef %conv368.i, i32 noundef %conv370.i) #8
  %298 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %name.i122, align 4
  %300 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %adap.i123, align 4
  %tobool386.not.i = icmp eq ptr %301, null
  br i1 %tobool386.not.i, label %cond.end364.i.cond.end392.i_crit_edge, label %cond.true387.i

cond.end364.i.cond.end392.i_crit_edge:            ; preds = %cond.end364.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end392.i

cond.true387.i:                                   ; preds = %cond.end364.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i790.i = getelementptr inbounds %struct.i2c_adapter, ptr %301, i32 0, i32 11
  %302 = ptrtoint ptr %nr.i790.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %nr.i790.i, align 4
  br label %cond.end392.i

cond.end392.i:                                    ; preds = %cond.true387.i, %cond.end364.i.cond.end392.i_crit_edge
  %cond393.i = phi i32 [ %303, %cond.true387.i ], [ -1, %cond.end364.i.cond.end392.i_crit_edge ]
  %304 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %149, align 8
  %conv396.i = zext i8 %305 to i32
  %306 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx33, align 1
  %308 = and i8 %307, 3
  %and399.i = zext i8 %308 to i32
  %arrayidx400.i = getelementptr [4 x ptr], ptr @dump_write_message.carrier, i32 0, i32 %and399.i
  %309 = ptrtoint ptr %arrayidx400.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx400.i, align 4
  %call401.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %299, i32 noundef %cond393.i, i32 noundef %conv396.i, ptr noundef %310) #8
  %311 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %name.i122, align 4
  %313 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %adap.i123, align 4
  %tobool416.not.i = icmp eq ptr %314, null
  br i1 %tobool416.not.i, label %cond.end392.i.cond.end422.i_crit_edge, label %cond.true417.i

cond.end392.i.cond.end422.i_crit_edge:            ; preds = %cond.end392.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end422.i

cond.true417.i:                                   ; preds = %cond.end392.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i791.i = getelementptr inbounds %struct.i2c_adapter, ptr %314, i32 0, i32 11
  %315 = ptrtoint ptr %nr.i791.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %nr.i791.i, align 4
  br label %cond.end422.i

cond.end422.i:                                    ; preds = %cond.true417.i, %cond.end392.i.cond.end422.i_crit_edge
  %cond423.i = phi i32 [ %316, %cond.true417.i ], [ -1, %cond.end392.i.cond.end422.i_crit_edge ]
  %317 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %149, align 8
  %conv426.i = zext i8 %318 to i32
  %319 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx33, align 1
  %321 = and i8 %320, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool430.not.i = icmp eq i8 %321, 0
  %cond431.i = select i1 %tobool430.not.i, ptr @.str.138, ptr @.str.137
  %call432.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %312, i32 noundef %cond423.i, i32 noundef %conv426.i, ptr noundef nonnull %cond431.i) #8
  %322 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx, align 1
  %324 = and i8 %323, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool440.not.i = icmp eq i8 %324, 0
  %325 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %name.i122, align 4
  %327 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %adap.i123, align 4
  %tobool521.not.i = icmp eq ptr %328, null
  br i1 %tobool440.not.i, label %do.end515.i, label %do.end445.i

do.end445.i:                                      ; preds = %cond.end422.i
  br i1 %tobool521.not.i, label %do.end445.i.cond.end457.i_crit_edge, label %cond.true452.i

do.end445.i.cond.end457.i_crit_edge:              ; preds = %do.end445.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end457.i

cond.true452.i:                                   ; preds = %do.end445.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i792.i = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 11
  %329 = ptrtoint ptr %nr.i792.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %nr.i792.i, align 4
  br label %cond.end457.i

cond.end457.i:                                    ; preds = %cond.true452.i, %do.end445.i.cond.end457.i_crit_edge
  %cond458.i = phi i32 [ %330, %cond.true452.i ], [ -1, %do.end445.i.cond.end457.i_crit_edge ]
  %331 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %149, align 8
  %conv461.i = zext i8 %332 to i32
  %333 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx33, align 1
  %335 = lshr i8 %334, 2
  %336 = and i8 %335, 3
  %337 = zext i8 %336 to i32
  %arrayidx466.i = getelementptr [4 x ptr], ptr @dump_write_message.rif, i32 0, i32 %337
  %338 = ptrtoint ptr %arrayidx466.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx466.i, align 4
  %call467.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %326, i32 noundef %cond458.i, i32 noundef %conv461.i, ptr noundef %339) #8
  %340 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %name.i122, align 4
  %342 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %adap.i123, align 4
  %tobool482.not.i = icmp eq ptr %343, null
  br i1 %tobool482.not.i, label %cond.end457.i.cond.end488.i_crit_edge, label %cond.true483.i

cond.end457.i.cond.end488.i_crit_edge:            ; preds = %cond.end457.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end488.i

cond.true483.i:                                   ; preds = %cond.end457.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i793.i = getelementptr inbounds %struct.i2c_adapter, ptr %343, i32 0, i32 11
  %344 = ptrtoint ptr %nr.i793.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %nr.i793.i, align 4
  br label %cond.end488.i

cond.end488.i:                                    ; preds = %cond.true483.i, %cond.end457.i.cond.end488.i_crit_edge
  %cond489.i = phi i32 [ %345, %cond.true483.i ], [ -1, %cond.end457.i.cond.end488.i_crit_edge ]
  %346 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %149, align 8
  %conv492.i = zext i8 %347 to i32
  %348 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx33, align 1
  %conv494.i = zext i8 %349 to i32
  %and495.i = and i32 %conv494.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and495.i)
  %tobool496.not.i = icmp eq i32 %and495.i, 0
  %and500.i = and i32 %conv494.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and500.i)
  %tobool501.not.i = icmp eq i32 %and500.i, 0
  %cond502.i = select i1 %tobool501.not.i, ptr @.str.146, ptr @.str.145
  %cond505.i = select i1 %tobool496.not.i, ptr @.str.147, ptr %cond502.i
  %call506.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %341, i32 noundef %cond489.i, i32 noundef %conv492.i, ptr noundef nonnull %cond505.i) #8
  br label %do.end629.i

do.end515.i:                                      ; preds = %cond.end422.i
  br i1 %tobool521.not.i, label %do.end515.i.cond.end527.i_crit_edge, label %cond.true522.i

do.end515.i.cond.end527.i_crit_edge:              ; preds = %do.end515.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end527.i

cond.true522.i:                                   ; preds = %do.end515.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i794.i = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 11
  %350 = ptrtoint ptr %nr.i794.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %nr.i794.i, align 4
  br label %cond.end527.i

cond.end527.i:                                    ; preds = %cond.true522.i, %do.end515.i.cond.end527.i_crit_edge
  %cond528.i = phi i32 [ %351, %cond.true522.i ], [ -1, %do.end515.i.cond.end527.i_crit_edge ]
  %352 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %149, align 8
  %conv531.i = zext i8 %353 to i32
  %354 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx33, align 1
  %356 = lshr i8 %355, 2
  %357 = and i8 %356, 7
  %358 = zext i8 %357 to i32
  %arrayidx536.i = getelementptr [8 x ptr], ptr @dump_write_message.vif, i32 0, i32 %358
  %359 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx536.i, align 4
  %call537.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %326, i32 noundef %cond528.i, i32 noundef %conv531.i, ptr noundef %360) #8
  %361 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %name.i122, align 4
  %363 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %adap.i123, align 4
  %tobool552.not.i = icmp eq ptr %364, null
  br i1 %tobool552.not.i, label %cond.end527.i.cond.end558.i_crit_edge, label %cond.true553.i

cond.end527.i.cond.end558.i_crit_edge:            ; preds = %cond.end527.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end558.i

cond.true553.i:                                   ; preds = %cond.end527.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i795.i = getelementptr inbounds %struct.i2c_adapter, ptr %364, i32 0, i32 11
  %365 = ptrtoint ptr %nr.i795.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %nr.i795.i, align 4
  br label %cond.end558.i

cond.end558.i:                                    ; preds = %cond.true553.i, %cond.end527.i.cond.end558.i_crit_edge
  %cond559.i = phi i32 [ %366, %cond.true553.i ], [ -1, %cond.end527.i.cond.end558.i_crit_edge ]
  %367 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %149, align 8
  %conv562.i = zext i8 %368 to i32
  %369 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx33, align 1
  %conv564.i = zext i8 %370 to i32
  %and565.i = and i32 %conv564.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and565.i)
  %tobool566.not.i = icmp eq i32 %and565.i, 0
  %and576.i = and i32 %conv564.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and576.i)
  %tobool577.not.i = icmp eq i32 %and576.i, 0
  %.str.155..str.153.i = select i1 %tobool566.not.i, ptr @.str.155, ptr @.str.153
  %cond578.i = select i1 %tobool577.not.i, ptr @.str.154, ptr %.str.155..str.153.i
  %call581.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %362, i32 noundef %cond559.i, i32 noundef %conv562.i, ptr noundef nonnull %cond578.i) #8
  %371 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %name.i122, align 4
  %373 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %adap.i123, align 4
  %tobool596.not.i = icmp eq ptr %374, null
  br i1 %tobool596.not.i, label %cond.end558.i.cond.end602.i_crit_edge, label %cond.true597.i

cond.end558.i.cond.end602.i_crit_edge:            ; preds = %cond.end558.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end602.i

cond.true597.i:                                   ; preds = %cond.end558.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i796.i = getelementptr inbounds %struct.i2c_adapter, ptr %374, i32 0, i32 11
  %375 = ptrtoint ptr %nr.i796.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %nr.i796.i, align 4
  br label %cond.end602.i

cond.end602.i:                                    ; preds = %cond.true597.i, %cond.end558.i.cond.end602.i_crit_edge
  %cond603.i = phi i32 [ %376, %cond.true597.i ], [ -1, %cond.end558.i.cond.end602.i_crit_edge ]
  %377 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %149, align 8
  %conv606.i = zext i8 %378 to i32
  %379 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx33, align 1
  %conv608.i = zext i8 %380 to i32
  %and609.i = and i32 %conv608.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and609.i)
  %tobool610.not.i = icmp eq i32 %and609.i, 0
  %and614.i = and i32 %conv608.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.i)
  %tobool615.not.i = icmp eq i32 %and614.i, 0
  %cond616.i = select i1 %tobool615.not.i, ptr @.str.159, ptr @.str.158
  %cond619.i = select i1 %tobool610.not.i, ptr @.str.160, ptr %cond616.i
  %call620.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %372, i32 noundef %cond603.i, i32 noundef %conv606.i, ptr noundef nonnull %cond619.i) #8
  br label %do.end629.i

do.end629.i:                                      ; preds = %cond.end602.i, %cond.end488.i
  %381 = ptrtoint ptr %name.i122 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %name.i122, align 4
  %383 = ptrtoint ptr %adap.i123 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %adap.i123, align 4
  %tobool635.not.i = icmp eq ptr %384, null
  br i1 %tobool635.not.i, label %do.end629.i.dump_write_message.exit_crit_edge, label %cond.true636.i

do.end629.i.dump_write_message.exit_crit_edge:    ; preds = %do.end629.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump_write_message.exit

cond.true636.i:                                   ; preds = %do.end629.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i797.i = getelementptr inbounds %struct.i2c_adapter, ptr %384, i32 0, i32 11
  %385 = ptrtoint ptr %nr.i797.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %nr.i797.i, align 4
  br label %dump_write_message.exit

dump_write_message.exit:                          ; preds = %cond.true636.i, %do.end629.i.dump_write_message.exit_crit_edge
  %cond642.i = phi i32 [ %386, %cond.true636.i ], [ -1, %do.end629.i.dump_write_message.exit_crit_edge ]
  %387 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %149, align 8
  %conv645.i = zext i8 %388 to i32
  %call646.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %382, i32 noundef %cond642.i, i32 noundef %conv645.i) #8
  br label %if.end45

if.end45:                                         ; preds = %dump_write_message.exit, %do.end40.if.end45_crit_edge, %do.body.if.end45_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %389 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 327679, ptr %389, align 4
  %391 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %1, align 4
  %conv.i133 = zext i8 %392 to i16
  %393 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %conv.i133, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %394 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %395 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %data, ptr %buf4.i, align 4
  %adap.i134 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %396 = ptrtoint ptr %adap.i134 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %adap.i134, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %397, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  %398 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call.i, label %do.end57 [
    i32 4, label %if.end45.if.end79_crit_edge
    i32 1, label %if.end45.if.end79_crit_edge149
  ]

if.end45.if.end79_crit_edge149:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.end45.if.end79_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

do.end57:                                         ; preds = %if.end45
  %name60 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %399 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %name60, align 4
  %401 = ptrtoint ptr %adap.i134 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %adap.i134, align 4
  %tobool63.not = icmp eq ptr %402, null
  br i1 %tobool63.not, label %do.end57.cond.end69_crit_edge, label %cond.true64

do.end57.cond.end69_crit_edge:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end69

cond.true64:                                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i136 = getelementptr inbounds %struct.i2c_adapter, ptr %402, i32 0, i32 11
  %403 = ptrtoint ptr %nr.i136 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %nr.i136, align 4
  br label %cond.end69

cond.end69:                                       ; preds = %cond.true64, %do.end57.cond.end69_crit_edge
  %cond70 = phi i32 [ %404, %cond.true64 ], [ -1, %do.end57.cond.end69_crit_edge ]
  %405 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %1, align 8
  %conv73 = zext i8 %406 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %400, i32 noundef %cond70, i32 noundef %conv73, i32 noundef %call.i) #8
  br label %if.end79

if.end79:                                         ; preds = %cond.end69, %if.end45.if.end79_crit_edge, %if.end45.if.end79_crit_edge149
  %407 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %407)
  %cmp80 = icmp sgt i32 %407, 2
  br i1 %cmp80, label %if.then82, label %if.end79.if.end85_crit_edge

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then82:                                        ; preds = %if.end79
  %call83 = call i32 @msleep_interruptible(i32 noundef 1000) #5
  %408 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %410 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 -1, ptr %buf.i, align 1, !annotation !414
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %411 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 131071, ptr %411, align 4
  %413 = ptrtoint ptr %409 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %409, align 4
  %conv.i.i = zext i8 %414 to i16
  %415 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %416 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %417 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %409, i32 0, i32 1
  %418 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %419, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %if.then82.if.end.i146_crit_edge, label %do.end.i140

if.then82.if.end.i146_crit_edge:                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i146

do.end.i140:                                      ; preds = %if.then82
  %name.i138 = getelementptr inbounds %struct.tuner_i2c_props, ptr %409, i32 0, i32 3
  %420 = ptrtoint ptr %name.i138 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %name.i138, align 4
  %422 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %adap.i.i, align 4
  %tobool.not.i139 = icmp eq ptr %423, null
  br i1 %tobool.not.i139, label %do.end.i140.cond.end.i145_crit_edge, label %cond.true.i142

do.end.i140.cond.end.i145_crit_edge:              ; preds = %do.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i145

cond.true.i142:                                   ; preds = %do.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i.i141 = getelementptr inbounds %struct.i2c_adapter, ptr %423, i32 0, i32 11
  %424 = ptrtoint ptr %nr.i.i141 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %nr.i.i141, align 4
  br label %cond.end.i145

cond.end.i145:                                    ; preds = %cond.true.i142, %do.end.i140.cond.end.i145_crit_edge
  %cond.i143 = phi i32 [ %425, %cond.true.i142 ], [ -1, %do.end.i140.cond.end.i145_crit_edge ]
  %426 = ptrtoint ptr %409 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %409, align 8
  %conv.i144 = zext i8 %427 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %421, i32 noundef %cond.i143, i32 noundef %conv.i144, i32 noundef %call.i.i) #8
  br label %if.end.i146

if.end.i146:                                      ; preds = %cond.end.i145, %if.then82.if.end.i146_crit_edge
  %428 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %analog_demod_priv, align 4
  %name.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %429, i32 0, i32 3
  %430 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %name.i.i, align 4
  %adap.i1.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %429, i32 0, i32 1
  %432 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %adap.i1.i, align 4
  %tobool.not.i.i = icmp eq ptr %433, null
  br i1 %tobool.not.i.i, label %if.end.i146.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i146.cond.end.i.i_crit_edge:               ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %433, i32 0, i32 11
  %434 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %nr.i.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i146.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %435, %cond.true.i.i ], [ -1, %if.end.i146.cond.end.i.i_crit_edge ]
  %436 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %429, align 8
  %conv.i2.i = zext i8 %437 to i32
  %438 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %buf.i, align 1
  %conv7.i.i = zext i8 %439 to i32
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %431, i32 noundef %cond.i.i, i32 noundef %conv.i2.i, i32 noundef %conv7.i.i) #8
  %440 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %name.i.i, align 4
  %442 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %adap.i1.i, align 4
  %tobool23.not.i.i = icmp eq ptr %443, null
  br i1 %tobool23.not.i.i, label %cond.end.i.i.cond.end29.i.i_crit_edge, label %cond.true24.i.i

cond.end.i.i.cond.end29.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end29.i.i

cond.true24.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i199.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %443, i32 0, i32 11
  %444 = ptrtoint ptr %nr.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %nr.i199.i.i, align 4
  br label %cond.end29.i.i

cond.end29.i.i:                                   ; preds = %cond.true24.i.i, %cond.end.i.i.cond.end29.i.i_crit_edge
  %cond30.i.i = phi i32 [ %445, %cond.true24.i.i ], [ -1, %cond.end.i.i.cond.end29.i.i_crit_edge ]
  %446 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %429, align 8
  %conv33.i.i = zext i8 %447 to i32
  %448 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %buf.i, align 1
  %450 = and i8 %449, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool36.not.i.i = icmp eq i8 %450, 0
  %cond37.i.i = select i1 %tobool36.not.i.i, ptr @.str.69, ptr @.str.96
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %441, i32 noundef %cond30.i.i, i32 noundef %conv33.i.i, ptr noundef nonnull %cond37.i.i) #8
  %451 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %name.i.i, align 4
  %453 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %adap.i1.i, align 4
  %tobool53.not.i.i = icmp eq ptr %454, null
  br i1 %tobool53.not.i.i, label %cond.end29.i.i.cond.end59.i.i_crit_edge, label %cond.true54.i.i

cond.end29.i.i.cond.end59.i.i_crit_edge:          ; preds = %cond.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end59.i.i

cond.true54.i.i:                                  ; preds = %cond.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i200.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %454, i32 0, i32 11
  %455 = ptrtoint ptr %nr.i200.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %nr.i200.i.i, align 4
  br label %cond.end59.i.i

cond.end59.i.i:                                   ; preds = %cond.true54.i.i, %cond.end29.i.i.cond.end59.i.i_crit_edge
  %cond60.i.i = phi i32 [ %456, %cond.true54.i.i ], [ -1, %cond.end29.i.i.cond.end59.i.i_crit_edge ]
  %457 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %429, align 8
  %conv63.i.i = zext i8 %458 to i32
  %459 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %buf.i, align 1
  %461 = lshr i8 %460, 1
  %462 = and i8 %461, 15
  %and66.i.i = zext i8 %462 to i32
  %arrayidx67.i.i = getelementptr [16 x ptr], ptr @dump_read_message.afc, i32 0, i32 %and66.i.i
  %463 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %arrayidx67.i.i, align 4
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %452, i32 noundef %cond60.i.i, i32 noundef %conv63.i.i, ptr noundef %464) #8
  %465 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %name.i.i, align 4
  %467 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %adap.i1.i, align 4
  %tobool83.not.i.i = icmp eq ptr %468, null
  br i1 %tobool83.not.i.i, label %cond.end59.i.i.cond.end89.i.i_crit_edge, label %cond.true84.i.i

cond.end59.i.i.cond.end89.i.i_crit_edge:          ; preds = %cond.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89.i.i

cond.true84.i.i:                                  ; preds = %cond.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i201.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %468, i32 0, i32 11
  %469 = ptrtoint ptr %nr.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %nr.i201.i.i, align 4
  br label %cond.end89.i.i

cond.end89.i.i:                                   ; preds = %cond.true84.i.i, %cond.end59.i.i.cond.end89.i.i_crit_edge
  %cond90.i.i = phi i32 [ %470, %cond.true84.i.i ], [ -1, %cond.end59.i.i.cond.end89.i.i_crit_edge ]
  %471 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %429, align 8
  %conv93.i.i = zext i8 %472 to i32
  %473 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %buf.i, align 1
  %475 = and i8 %474, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %475)
  %tobool97.not.i.i = icmp eq i8 %475, 0
  %cond98.i.i = select i1 %tobool97.not.i.i, ptr @.str.194, ptr @.str.193
  %call99.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %466, i32 noundef %cond90.i.i, i32 noundef %conv93.i.i, ptr noundef nonnull %cond98.i.i) #8
  %476 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %name.i.i, align 4
  %478 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %adap.i1.i, align 4
  %tobool114.not.i.i = icmp eq ptr %479, null
  br i1 %tobool114.not.i.i, label %cond.end89.i.i.cond.end120.i.i_crit_edge, label %cond.true115.i.i

cond.end89.i.i.cond.end120.i.i_crit_edge:         ; preds = %cond.end89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end120.i.i

cond.true115.i.i:                                 ; preds = %cond.end89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i202.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %479, i32 0, i32 11
  %480 = ptrtoint ptr %nr.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %nr.i202.i.i, align 4
  br label %cond.end120.i.i

cond.end120.i.i:                                  ; preds = %cond.true115.i.i, %cond.end89.i.i.cond.end120.i.i_crit_edge
  %cond121.i.i = phi i32 [ %481, %cond.true115.i.i ], [ -1, %cond.end89.i.i.cond.end120.i.i_crit_edge ]
  %482 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %429, align 8
  %conv124.i.i = zext i8 %483 to i32
  %484 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %buf.i, align 1
  %486 = and i8 %485, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool128.not.i.i = icmp eq i8 %486, 0
  %cond129.i.i = select i1 %tobool128.not.i.i, ptr @.str.199, ptr @.str.198
  %call130.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %477, i32 noundef %cond121.i.i, i32 noundef %conv124.i.i, ptr noundef nonnull %cond129.i.i) #8
  %487 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %name.i.i, align 4
  %489 = ptrtoint ptr %adap.i1.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %adap.i1.i, align 4
  %tobool145.not.i.i = icmp eq ptr %490, null
  br i1 %tobool145.not.i.i, label %cond.end120.i.i.tda9887_status.exit_crit_edge, label %cond.true146.i.i

cond.end120.i.i.tda9887_status.exit_crit_edge:    ; preds = %cond.end120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda9887_status.exit

cond.true146.i.i:                                 ; preds = %cond.end120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i203.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %490, i32 0, i32 11
  %491 = ptrtoint ptr %nr.i203.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %nr.i203.i.i, align 4
  br label %tda9887_status.exit

tda9887_status.exit:                              ; preds = %cond.true146.i.i, %cond.end120.i.i.tda9887_status.exit_crit_edge
  %cond152.i.i = phi i32 [ %492, %cond.true146.i.i ], [ -1, %cond.end120.i.i.tda9887_status.exit_crit_edge ]
  %493 = ptrtoint ptr %429 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %429, align 8
  %conv155.i.i = zext i8 %494 to i32
  %495 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %496)
  %tobool159.not.i.i = icmp sgt i8 %496, -1
  %cond160.i.i = select i1 %tobool159.not.i.i, ptr @.str.194, ptr @.str.193
  %call161.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %488, i32 noundef %cond152.i.i, i32 noundef %conv155.i.i, ptr noundef nonnull %cond160.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  br label %if.end85

if.end85:                                         ; preds = %tda9887_status.exit, %if.end79.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !303, !304, !306, !307, !309, !310, !311, !312, !313, !314, !316, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !382, !384, !385, !386, !387, !388, !390, !391, !392, !394, !396, !397, !398, !399, !401, !402, !403}
!llvm.module.flags = !{!404, !405, !406, !407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda9887.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda9887.c", i32 26, i32 1}
!5 = !{ptr @__param_port1, !6, !"__param_port1", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda9887.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_port1type294, !6, !"__UNIQUE_ID_port1type294", i1 false, i1 false}
!8 = !{ptr @__param_port2, !9, !"__param_port2", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tda9887.c", i32 439, i32 1}
!10 = !{ptr @__UNIQUE_ID_port2type295, !9, !"__UNIQUE_ID_port2type295", i1 false, i1 false}
!11 = !{ptr @__param_qss, !12, !"__param_qss", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/tda9887.c", i32 440, i32 1}
!13 = !{ptr @__UNIQUE_ID_qsstype296, !12, !"__UNIQUE_ID_qsstype296", i1 false, i1 false}
!14 = !{ptr @__param_adjust, !15, !"__param_adjust", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda9887.c", i32 441, i32 1}
!16 = !{ptr @__UNIQUE_ID_adjusttype297, !15, !"__UNIQUE_ID_adjusttype297", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/tda9887.c", i32 684, i32 13}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tda9887_attach._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @tda9887_attach._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tda9887_attach._entry.4, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @tda9887_attach._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/tda9887.c", i32 694, i32 3}
!29 = !{ptr @tda9887_attach._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tda9887_attach._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_tda9887_attach, !32, !"__ksymtab_tda9887_attach", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/tda9887.c", i32 708, i32 1}
!33 = !{ptr @__UNIQUE_ID_file298, !34, !"__UNIQUE_ID_file298", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/tda9887.c", i32 710, i32 1}
!35 = !{ptr @__UNIQUE_ID_license299, !34, !"__UNIQUE_ID_license299", i1 false, i1 false}
!36 = !{ptr @debug, !37, !"debug", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/tda9887.c", i32 24, i32 12}
!38 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!39 = !{ptr @__param_str_port1, !6, !"__param_str_port1", i1 false, i1 false}
!40 = !{ptr @port1, !41, !"port1", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda9887.c", i32 433, i32 21}
!42 = !{ptr @__param_str_port2, !9, !"__param_str_port2", i1 false, i1 false}
!43 = !{ptr @port2, !44, !"port2", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tda9887.c", i32 434, i32 21}
!45 = !{ptr @__param_str_qss, !12, !"__param_str_qss", i1 false, i1 false}
!46 = !{ptr @qss, !47, !"qss", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tda9887.c", i32 435, i32 21}
!48 = !{ptr @__param_str_adjust, !15, !"__param_str_adjust", i1 false, i1 false}
!49 = !{ptr @adjust, !50, !"adjust", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/tda9887.c", i32 436, i32 21}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/tda9887.c", i32 28, i32 8}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tda9887_list_mutex, !52, !"tda9887_list_mutex", i1 false, i1 false}
!55 = !{ptr @hybrid_tuner_instance_list, !56, !"hybrid_tuner_instance_list", i1 false, i1 false}
!56 = !{!"../drivers/media/tuners/tda9887.c", i32 29, i32 8}
!57 = !{ptr @tda9887_ops, !58, !"tda9887_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tda9887.c", i32 663, i32 38}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/tda9887.c", i32 577, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tda9887_configure._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tda9887_configure._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/tda9887.c", i32 583, i32 3}
!66 = !{ptr @tda9887_configure._entry.14, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tda9887_configure._entry_ptr.16, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/tda9887.c", i32 422, i32 3}
!70 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tda9887_set_tvnorm._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tda9887_set_tvnorm._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/tda9887.c", i32 426, i32 2}
!75 = !{ptr @tda9887_set_tvnorm._entry.19, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tda9887_set_tvnorm._entry_ptr.21, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/tuners/tda9887.c", i32 258, i32 10}
!79 = !{ptr @radio_mono, !80, !"radio_mono", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tda9887.c", i32 257, i32 22}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/tuners/tda9887.c", i32 246, i32 10}
!83 = !{ptr @radio_stereo, !84, !"radio_stereo", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/tda9887.c", i32 245, i32 22}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/tda9887.c", i32 140, i32 12}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/tuners/tda9887.c", i32 151, i32 12}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/tuners/tda9887.c", i32 162, i32 12}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/tda9887.c", i32 173, i32 12}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/tda9887.c", i32 184, i32 12}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/tda9887.c", i32 192, i32 12}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/tuners/tda9887.c", i32 201, i32 12}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/tda9887.c", i32 211, i32 12}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/tda9887.c", i32 222, i32 12}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/tuners/tda9887.c", i32 233, i32 12}
!105 = !{ptr @tvnorms, !106, !"tvnorms", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/tda9887.c", i32 137, i32 22}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/tuners/tda9887.c", i32 306, i32 3}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/tda9887.c", i32 307, i32 3}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/tda9887.c", i32 308, i32 3}
!113 = !{ptr @dump_write_message.sound, !114, !"sound", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/tda9887.c", i32 305, i32 15}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 3}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 10}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 17}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 24}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 31}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 38}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 45}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/tuners/tda9887.c", i32 312, i32 52}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 3}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 10}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 17}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 24}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 31}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 38}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 45}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/tuners/tda9887.c", i32 313, i32 52}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 3}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 10}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 17}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 24}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 31}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 38}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 45}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/tuners/tda9887.c", i32 314, i32 52}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 3}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 10}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 17}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 24}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 31}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 38}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 45}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/tuners/tda9887.c", i32 315, i32 52}
!179 = !{ptr @dump_write_message.adjust, !180, !"adjust", i1 false, i1 false}
!180 = !{!"../drivers/media/tuners/tda9887.c", i32 311, i32 15}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/tuners/tda9887.c", i32 318, i32 3}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/tuners/tda9887.c", i32 318, i32 15}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/tuners/tda9887.c", i32 318, i32 21}
!187 = !{ptr @dump_write_message.deemph, !188, !"deemph", i1 false, i1 false}
!188 = !{!"../drivers/media/tuners/tda9887.c", i32 317, i32 15}
!189 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/tuners/tda9887.c", i32 321, i32 3}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/tuners/tda9887.c", i32 322, i32 3}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/tuners/tda9887.c", i32 323, i32 3}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/tuners/tda9887.c", i32 324, i32 3}
!197 = !{ptr @dump_write_message.carrier, !198, !"carrier", i1 false, i1 false}
!198 = !{!"../drivers/media/tuners/tda9887.c", i32 320, i32 15}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/tuners/tda9887.c", i32 327, i32 3}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/tuners/tda9887.c", i32 328, i32 3}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/tuners/tda9887.c", i32 329, i32 3}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/tuners/tda9887.c", i32 330, i32 3}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/tuners/tda9887.c", i32 331, i32 3}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/tuners/tda9887.c", i32 332, i32 3}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/tuners/tda9887.c", i32 333, i32 3}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/tuners/tda9887.c", i32 334, i32 3}
!215 = !{ptr @dump_write_message.vif, !216, !"vif", i1 false, i1 false}
!216 = !{!"../drivers/media/tuners/tda9887.c", i32 326, i32 15}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/tuners/tda9887.c", i32 337, i32 3}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/tuners/tda9887.c", i32 338, i32 3}
!221 = !{ptr @dump_write_message.rif, !222, !"rif", i1 false, i1 false}
!222 = !{!"../drivers/media/tuners/tda9887.c", i32 336, i32 15}
!223 = !{ptr @.str.86, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/tuners/tda9887.c", i32 343, i32 2}
!225 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @dump_write_message._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @dump_write_message._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/tuners/tda9887.c", i32 344, i32 2}
!230 = !{ptr @dump_write_message._entry.88, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dump_write_message._entry_ptr.90, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.91, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.92, !229, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.94, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/tuners/tda9887.c", i32 346, i32 2}
!236 = !{ptr @dump_write_message._entry.93, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @dump_write_message._entry_ptr.95, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.96, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.98, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/tuners/tda9887.c", i32 348, i32 2}
!241 = !{ptr @dump_write_message._entry.97, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @dump_write_message._entry_ptr.99, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/tuners/tda9887.c", i32 350, i32 2}
!247 = !{ptr @dump_write_message._entry.102, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @dump_write_message._entry_ptr.104, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/tuners/tda9887.c", i32 352, i32 2}
!251 = !{ptr @dump_write_message._entry.105, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @dump_write_message._entry_ptr.107, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/tuners/tda9887.c", i32 354, i32 2}
!255 = !{ptr @dump_write_message._entry.108, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @dump_write_message._entry_ptr.110, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.112, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/tuners/tda9887.c", i32 356, i32 2}
!261 = !{ptr @dump_write_message._entry.113, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @dump_write_message._entry_ptr.115, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/tuners/tda9887.c", i32 359, i32 2}
!265 = !{ptr @dump_write_message._entry.116, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dump_write_message._entry_ptr.118, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/tuners/tda9887.c", i32 360, i32 2}
!269 = !{ptr @dump_write_message._entry.119, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @dump_write_message._entry_ptr.121, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/tuners/tda9887.c", i32 362, i32 2}
!273 = !{ptr @dump_write_message._entry.122, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @dump_write_message._entry_ptr.124, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/tuners/tda9887.c", i32 364, i32 2}
!277 = !{ptr @dump_write_message._entry.125, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @dump_write_message._entry_ptr.127, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/tuners/tda9887.c", i32 367, i32 2}
!281 = !{ptr @dump_write_message._entry.128, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @dump_write_message._entry_ptr.130, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.132, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/tuners/tda9887.c", i32 368, i32 2}
!285 = !{ptr @dump_write_message._entry.131, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @dump_write_message._entry_ptr.133, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/tuners/tda9887.c", i32 370, i32 2}
!289 = !{ptr @dump_write_message._entry.134, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @dump_write_message._entry_ptr.136, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/tuners/tda9887.c", i32 375, i32 3}
!295 = !{ptr @dump_write_message._entry.139, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @dump_write_message._entry_ptr.141, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/tuners/tda9887.c", i32 377, i32 3}
!299 = !{ptr @dump_write_message._entry.142, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @dump_write_message._entry_ptr.144, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.146, !298, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @dump_write_message._entry.148, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/media/tuners/tda9887.c", i32 384, i32 3}
!306 = !{ptr @dump_write_message._entry_ptr.149, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.151, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/tuners/tda9887.c", i32 386, i32 3}
!309 = !{ptr @dump_write_message._entry.150, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @dump_write_message._entry_ptr.152, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.155, !308, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @dump_write_message._entry.156, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/media/tuners/tda9887.c", i32 390, i32 3}
!316 = !{ptr @dump_write_message._entry_ptr.157, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.158, !315, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.159, !315, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.160, !315, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.162, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/tuners/tda9887.c", i32 396, i32 2}
!322 = !{ptr @dump_write_message._entry.161, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @dump_write_message._entry_ptr.163, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.164, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/tuners/tda9887.c", i32 542, i32 3}
!326 = !{ptr @.str.165, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @tda9887_status._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @tda9887_status._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/tuners/tda9887.c", i32 276, i32 3}
!331 = !{ptr @.str.167, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/tuners/tda9887.c", i32 277, i32 3}
!333 = !{ptr @.str.168, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/tuners/tda9887.c", i32 278, i32 3}
!335 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/tuners/tda9887.c", i32 279, i32 3}
!337 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/tuners/tda9887.c", i32 280, i32 3}
!339 = !{ptr @.str.171, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/tuners/tda9887.c", i32 281, i32 3}
!341 = !{ptr @.str.172, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/tuners/tda9887.c", i32 282, i32 3}
!343 = !{ptr @.str.173, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/tuners/tda9887.c", i32 283, i32 3}
!345 = !{ptr @.str.174, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/media/tuners/tda9887.c", i32 284, i32 3}
!347 = !{ptr @.str.175, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/tuners/tda9887.c", i32 285, i32 3}
!349 = !{ptr @.str.176, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/tuners/tda9887.c", i32 286, i32 3}
!351 = !{ptr @.str.177, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/tuners/tda9887.c", i32 287, i32 3}
!353 = !{ptr @.str.178, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/tuners/tda9887.c", i32 288, i32 3}
!355 = !{ptr @.str.179, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/tuners/tda9887.c", i32 289, i32 3}
!357 = !{ptr @.str.180, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/tuners/tda9887.c", i32 290, i32 3}
!359 = !{ptr @.str.181, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/tuners/tda9887.c", i32 291, i32 3}
!361 = !{ptr @dump_read_message.afc, !362, !"afc", i1 false, i1 false}
!362 = !{!"../drivers/media/tuners/tda9887.c", i32 275, i32 15}
!363 = !{ptr @.str.182, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/tuners/tda9887.c", i32 293, i32 2}
!365 = !{ptr @.str.183, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @dump_read_message._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @dump_read_message._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.185, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/tuners/tda9887.c", i32 294, i32 2}
!370 = !{ptr @dump_read_message._entry.184, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @dump_read_message._entry_ptr.186, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.188, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/tuners/tda9887.c", i32 295, i32 2}
!374 = !{ptr @dump_read_message._entry.187, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @dump_read_message._entry_ptr.189, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.191, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/tuners/tda9887.c", i32 296, i32 2}
!378 = !{ptr @dump_read_message._entry.190, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @dump_read_message._entry_ptr.192, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.193, !377, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.194, !377, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.196, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/tuners/tda9887.c", i32 297, i32 2}
!384 = !{ptr @dump_read_message._entry.195, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @dump_read_message._entry_ptr.197, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.198, !383, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.199, !383, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.201, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/tuners/tda9887.c", i32 298, i32 2}
!390 = !{ptr @dump_read_message._entry.200, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @dump_read_message._entry_ptr.202, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @tda9887_get_afc.AFC_BITS_2_kHz, !393, !"AFC_BITS_2_kHz", i1 false, i1 false}
!393 = !{!"../drivers/media/tuners/tda9887.c", i32 603, i32 19}
!394 = !{ptr @.str.203, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/tuners/tda9887.c", i32 596, i32 2}
!396 = !{ptr @.str.204, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @tda9887_tuner_status._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @tda9887_tuner_status._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.205, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/tuners/tda9887.c", i32 656, i32 3}
!401 = !{ptr @.str.206, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @tda9887_release._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @tda9887_release._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{i32 1, !"wchar_size", i32 2}
!405 = !{i32 1, !"min_enum_size", i32 4}
!406 = !{i32 8, !"branch-target-enforcement", i32 0}
!407 = !{i32 8, !"sign-return-address", i32 0}
!408 = !{i32 8, !"sign-return-address-all", i32 0}
!409 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!410 = !{i32 7, !"uwtable", i32 1}
!411 = !{i32 7, !"frame-pointer", i32 2}
!412 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!413 = !{i8 0, i8 2}
!414 = !{!"auto-init"}
